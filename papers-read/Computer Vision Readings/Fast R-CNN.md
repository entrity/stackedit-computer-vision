<small>R. Girshick. ICCV 2015. [link](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Girshick_Fast_R-CNN_ICCV_2015_paper.pdf)
</small>
# Fast R-CNN

**Bottom line:** Speed up R-CNN by taking region proposals from late in the network (still using *selective search*) instead of before the network. This reuses computation for all proposals. Introduces *RoI Pooling Layer*.

**Goal**: improve speed and accuracy of object detection (over R-CNN).

9x faster than R-CNN. 3x faster than SPPnet (Spatial Pyramid Pooling net). mAP 66%

Jointly optimizes classifier and BB regressor, which this paper says R-CNN did not.

**Speedup and Batch design**:
Faster because all RoI's from a single image get most of their computation shared. Batches are sampled by sampling $N=2$ images, then sampling $R/N = 64$ RoIs from each. 25% of RoIs are foreground (IoU $> 0.5$); 75% are background (max IoU is in $[0.1,0.5)$).

**Input** image + object proposals

**Network**: Pass entire image through CNN. Then RoI-pool each RoI to make fixed-length feature vector. Pass feature vector through MLP. Output class probabilities and BB for each of the class predictions.

Make use of existing, trained models. Swap the last max-pooling layer for an roi-pooling layer. Swap the end of the classifier with as many nodes as needed for the classes and BB's.

**RoI Pooling Layer**
*Region of interest* is a rectangle defined by $(r,c,h,w)$. Max-pool RoI feature maps into 7x7 feature map, (I.e. max pool $H \times W$ sub-windows of size $h/H \times w/W$ within the RoI.) (Channels are pooled independently of each other.)

Improvement over SPPnet; very inefficient to back-propagate through the SPP layer: samples come from different images. Fast R-CNN has samples which are RoI's from same image, so they share computation.

**Bounding Box Regression Loss**
In addition to loss for classification error, there is a loss on outputs which predict transformation to the BB which selective search proposed. It is a smoothL1 distance on each of the 4 numbers which represent the BB.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzMjU2MTQ1ODNdfQ==
-->