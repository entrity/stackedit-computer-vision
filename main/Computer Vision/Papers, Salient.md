**[AlexNet](http://www.cs.toronto.edu/~fritz/absps/imagenet.pdf) (ImageNet Classification with Deep Convolutional Neural Networks)**
2012: Showed that CNN's could beat classical computer vision techniques for object detection

**[R-CNN](https://dl.dropboxusercontent.com/s/293tu0hh9ww08co/r-cnn-cvpr.pdf?dl=0) (Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation)**
R. Girshick, J. Donahue, T. Darrell, J. Malik. CVPR 2014.
Showed that CNN's (deep learning) are effective at object detection (on PASCAL VOC). Used *selective search* to send ~2000 region proposals to Alexnet for classification. Used pretraining, followed by domain-specific fine-tuning.

**SPPnet**
Speedup on R-CNN. Computes feature map on entire image, then max-pools each region proposal to a fixed size. Multiple output sizes are concatenated, then classified.

**[Fast R-CNN](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Girshick_Fast_R-CNN_ICCV_2015_paper.pdf)** 
R. Girshick. ICCV 2015. Speed up R-CNN by taking region proposals from late in the network (still using *selective search*) instead of before the network. This reuses computation for all proposals. Introduces *RoI Pooling Layer*

**Faster R-CNN**
This speeds up on Fast R-CNN by eliminating Selective Search and instead incorporating a short Region Proposal Network (RPN) between the conv layers and fc layers of Fast R-CNN.

**[ResNet](http://arxiv.org/pdf/1512.03385v1.pdf) (Deep Residual Learning for Image Recognition)**
2016: Use skip connections to learn not output but the difference between output and input. Also use bottleneck layers.


---

**[DeCAF: A Deep Convolutional Activation Feature for Generic Visual Recognition](http://arxiv.org/pdf/1310.1531v1.pdf)**
J. Donahue, Y. Jia, O. Vinyals, J. Hoffman, N. Zhang, E. Tzeng, and T. Darrell. ICML 2013.

**[How transferable are features in deep neural networks?](http://arxiv.org/pdf/1411.1792v1.pdf)**
J. Yosinski, J. Clune, Y. Bengio, and H. Lipson. NIPS 2014.


 


[SSD: Single Shot MultiBox Detector](https://arxiv.org/pdf/1512.02325.pdf). Wei Liu, Dragomir Anguelov, Dumitru Erhan, Christian Szegedy, Scott Reed, Cheng-Yang Fu, and Alexander C. Berg. ECCV 2016

[You Only Look Once:Unified, Real-Time Object Detection](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Redmon_You_Only_Look_CVPR_2016_paper.pdf). Joseph Redmon, Santosh Divvala, Ross Girshick, and Ali Farhadi. CVPR 2016

[Visualizing and Understanding Convolutional Networks](http://arxiv.org/pdf/1311.2901v3.pdf). M. Zeiler and R. Fergus. ECCV 2014.  
[Analyzing the Performance of Multilayer Neural Networks for Object Recognition](https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/papers/PulkitECCV2014.pdf).

[Mask R-CNN](http://openaccess.thecvf.com/content_ICCV_2017/papers/He_Mask_R-CNN_ICCV_2017_paper.pdf). Kaiming He, Georgia Gkioxari, Piotr Dollar, Ross Girshick. ICCV 2017.  
[Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs.](https://arxiv.org/pdf/1412.7062.pdf). Liang-Chieh Chen, George Papandreou, Iasonas Kokkinos, Kevin Murphy, Alan L. Yuille. ICLR 2015.

[Weakly-supervised Visual Grounding of Phrases with Linguistic Structures](http://www.cs.ucdavis.edu/~yjlee/projects/weakgrounding_cvpr2017.pdf). Fanyi Xiao, Leonid Sigal and Yong Jae Lee. CVPR 2017

[Active Object Localization with Deep Reinforcement Learning](http://slazebni.cs.illinois.edu/publications/iccv15_active.pdf). J. Caicedo and S. Lazebnik, ICCV 2015.  
[Action-Decision Networks for Visual Tracking with Deep Reinforcement Learning](http://openaccess.thecvf.com/content_cvpr_2017/papers/Yun_Action-Decision_Networks_for_CVPR_2017_paper.pdf). Sangdoo Yun et al., CVPR 2016

[Image Style Transfer Using Convolutional Neural Networks](http://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Gatys_Image_Style_Transfer_CVPR_2016_paper.pdf). L. Gatys, A. Ecker, M. Bethge. CVPR 2016.  
[Universal Style Transfer via Feature Transforms](http://papers.nips.cc/paper/6642-universal-style-transfer-via-feature-transforms.pdf). Yijun Li, Chen Fang, Jimei Yang, Zhaowen Wang, Xin Lu and Ming-Hsuan Yang. NIPS 2017.

[Image-to-Image Translation with Conditional Adversarial Networks](http://openaccess.thecvf.com/content_cvpr_2017/papers/Isola_Image-To-Image_Translation_With_CVPR_2017_paper.pdf). Phillip Isola, Jun-Yan Zhu, Tinghui Zhou, and Alexei A. Efros. CVPR 2017.  
[StarGAN: Unified Generative Adversarial Networks for Multi-Domain Image-to-Image Translation](https://arxiv.org/pdf/1711.09020.pdf). Yunjey Choi, et al., arXiv 2017.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEwNDE0ODAyMjNdfQ==
-->