
# [You Only Look Once: Unified, Real-Time Object Detection](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Redmon_You_Only_Look_CVPR_2016_paper.pdf) 2016
Bottom line: Object detection. E2e: a single convnet predicts bbs and class probabilities for those bbs.
1. Speedup over divided models like the original R-CNN. Speedup over sliding window models like Deformable Parts Model (DPM). Better mAP.
2. Global reasoning (unlike sliding-window or region-proposal solutions). Contrast with Fast R-CNN.
3. Transfers across domains better.

Weaknesses: Location accuracy less than SOTA, particularly for small objects.

Looks at entire image at once.
Predicts all bounding boxes for all classes at once.
Divides image into SxS grid. Each cell is responsible for an object if the object's center falls within the cell. Each cell predicts $B$ bbs and $C$ class probabilities. (One set of $C$ per cell, regardless of $B$.)

**Format**: BB is $x,y,h,w,confidence$, where $x,y$ are the center of the object relative to the cell and $w,h$ are relative to the whole image and $c$ is IoU.
At test time, class confidence is $Pr(Obj) \times \text{IoU}$.

### Architecture
24 conv layers + 2 fc layers. 1x1 reduction layers followed by 3x3 conv layers.
A fast version was created (150 fps vs 45 fps): 9 conv layers instead of 24, fewer filters per layer.

### Experiments
Pascal VOC 2007 & 2012. $S=7, B=2, C=20$

Pretrained on ImageNet until classification was comparable to GoogLeNet.
Then prepended four Conv layers and added two fc layers. Increased resolution from 224 to 448 in order to support detection task, as opposed to image classification task.
135 epochs training.

Low confidences for cells that contain yields high gradient, which gradient from neighbouring cells during backprop. Compensate by increasing weight of BB and decreasing weight of classification on cells that lack objects (in gt): $\lambda_{\text{coord}}=5$, $\lambda_{\text{noobj}}=0.5$

Small deviations in BB of large objects matter less than for small objects, so predict square root of $w,h$ instead of width and height directly.

Different BB predictors end up specializing for different aspect ratios and sizes.

# [YOLO9000: Better, Faster, Stronger](http://openaccess.thecvf.com/content_cvpr_2017/papers/Redmon_YOLO9000_Better_Faster_CVPR_2017_paper.pdf) 2017

Achieves SOTA on object detection with realtime speed (30+ fps)
Better than YOLO: YOLO had low recall and high error in localization.

### Changes from YOLO
Changed network: simpler
1. include batchnorm, remove dropout
2. fine-tune classifier network at full resolution (448x448)
3. remove FC layers; use anchor boxes to predict BBs for each cell. (yields 1000+ proposals vs 98 from YOLO)
4. shrink res to 416x416 and remove a pooling layer to give 13x13 output, which has a center cell, since images tend to have an object in center
5. predict class and objectness (IoU) for every anchor box.

### Anchor boxes
AB's (a.k.a. "bounding box priors") have to be picked, not learned. But they pick good ones by running k-means clustering on data set, using $d(\text{box},\text{centroid}) = 1 - \text{IoU}(\text{box},\text{centroid})$.

Predict 5 BBs at each cell, and predict $x,y,w,h,o$ for each BB.

Constrain $x,y$ of BB by passing predicted $t_x,t_y$ through $\sigma$ to bound to [0,1] to keep location from ending up just anywhere in image (not near to given grid cell).

### Joint classification and detection (different datasets)

Trains on both detection datasets (COCO) *and* image classification datasets (ImageNet). Makes a hierarchical synset for all labels from both datasets. When given a classification example, we only backprop classification loss. When given any example, classification loss is only backpropagated at or above the corresponding level of the label in the WordTree.

### Misc

For localizing smaller objects, add a passthrough layer that brings features from an earlier layer at double resolution. Stack adjacent features in high-res maps so that the spatial dimensions drop to match that of the low-res maps so that the they two can be concatenated.

Uses Darknet-19 as its base.

### Performance
78.6 mAP at high resolution.

# [YOLOv3: An Incremental Improvement](https://pjreddie.com/media/files/papers/YOLOv3.pdf) 2018 Apr 8


### Multiscale predictions
Predicts at 3 scales for each BB. (9 clusters were chosen for BB priors, then these were divided evenly among the 3 scales.)
At the first scale, a prediction is made as usual for 3 BB's at each of the NxN output locations.
Then the feature map from 2 layers up is upsampled 2x and concatenated with another feature map from still higher in the network. (See YOLO9000 for how they concatenate feature maps of different spatial dimensions.) This map is passed through some more conv layers and then outputs predictions in the same format as at the first scale (but larger since the final feature maps are larger).
The same thing happens once more for the 3rd prediction, at the finest-grained scale of all (smallest objects).

### New base network
Uses Darknet-53, which is a hybrid of Darknet-19 (from YOLOv2) and residual networks.
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDU2NjQxMDQ4LDcwNzQxMDg0MCwxNTY1Nj
I3NjQyLC0xOTU2NTE5MDA4XX0=
-->