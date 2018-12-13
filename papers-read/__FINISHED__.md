
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
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE0NDE0NDM0ODldfQ==
-->