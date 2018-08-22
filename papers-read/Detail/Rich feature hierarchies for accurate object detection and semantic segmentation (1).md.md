<small>Girshick, R., Donahue, J., Darrell, T., & Malik, J. (2012). Rich feature hierarchies for accu- rate object detection and semantic segmentation. _Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition_, 580–587. https://doi.org/10.1109/CVPR.2014.81</small>
# Rich feature hierarchies for accurate object detection and semantic segmentation
# (R-CNN)

Showed that CNN's (deep learning) are effective at object detection (on PASCAL VOC). Prior to this, object detection was done with classical methods such as SIFT and HOG.

1. *Selective search* generates class-agnostic region proposals.
2. Each region is affine warped to 227x227 and passed through alexet for feature extraction (4096-dimensional).
3. SVM layer computes class probabilities.

Generate ~2000 region proposals at test time. Warp all proposals to have same dimensions, then pass them through the CNN and classifier to get scores. Apply non-maximum suppression: reject a region if its IoU with a higher scoring proposal exceeds a given threshold.

Writers use **selective search** to generate **region proposals**; thus, this is not e2e.

**Annotations** were image-level. **Predictions** were object class labels, coupled with the BB's from selective search.

**Efficiency** comes from the fact that class-specific computation is done only at NMS and the SVM layers. CNN params are shared among all classes. The feature vector produced by the CNN is lower-dimensional than other common approaches.

Bounding box regression is performed (even though proposals come from selective search).

### Previous work

Common approaches were to use spatial pyramids with bag of visual word encodings as features for the classifier.
Other localization attempts framed it as a regression problem. Others used a sliding window detector.

Contributions:
1. apply "high-capacity" CNN to object detection
2. show that pretraining + domain-specific fine tuning is useful for this task

### Details

21 classes. VOC dataset.

SGD minibatch is 32 randomly sampled                          positive windows (gt BB's) and 96 background windows. Negative (background) windows are those that have less than 0.3 IoU with a gt BB.

**Performance**: mAP 59%. 13s/image on GPU; 53s/image on CPU.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTU3OTk2NDkzN119
-->