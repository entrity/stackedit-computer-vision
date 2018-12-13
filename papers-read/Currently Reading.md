# [On Implicit Filter Level Sparsity in Convolutional Neural Networks](https://arxiv.org/pdf/1811.12495.pdf)

Related to 'dying ReLU' phenomenon, in which some features get cut off in training. Causes reduced learning capacity of network. LeakyReLU and RandomOut propose symptomatic fixes.

Proposal: this emergency of sparsity is result of disproportionate influence of regularizer (L2 or weight decay) viz the gradients in training.

- Increases mini-batch size decreases sparsity
- adaptive gradient descent method increase sparsity
- L2 synergizes with adaptive gradient descent more than weight decay does to increase sparsity

Said sparsity can be leveraged for speedup, eliminating the need for explicit pruning. Can remove 70-80% of filters from VGG-16 on CIFAR10/100.

# [Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networks](https://arxiv.org/pdf/1703.10593.pdf)

# [Taskonomy: Disentangling Task Transfer Learning](http://taskonomy.stanford.edu/taskonomy_CVPR2018.pdf)

Learning tasks in isolation ignores useful relationships. Model aware of relationships requires less supervision and computation (than multiple models, one for each task).

> Unlike multi-task learning, we explicitly model the relations among tasks and extract a meta-structure.

# [Evolution of Visual Odometry Techniques](https://arxiv.org/pdf/1804.11142.pdf)

# [Object Discovery in Videos as Foreground Motion Clustering](https://arxiv.org/pdf/1812.02772.pdf)

BG: Motion segmentation methods aim to segment moving objects in video, can discover new (unseen) objects (as opposed to object detection and object tracking in video, which train for specific categories).

Plan: formulate object discovery problem as foreground motion clusterin: cluster pixels in a video into different objects based on their motion.

Video frames and optical flow as input to encoder-decoder, then use feature embeddings to learn classifier to discriminate foreground v background.

# [Deep-RBF Networks Revisited: Robust Classification with Rejection](https://arxiv.org/pdf/1812.03190.pdf)

# [You Only Look Once: Unified, Real-Time Object Detection](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Redmon_You_Only_Look_CVPR_2016_paper.pdf) 2016
Bottom line: Object detection. E2e: a single convnet predicts bbs and class probabilities for those bbs.
1. Speedup over divided models like the original R-CNN. Speedup over sliding window models like Deformable Parts Model (DPM). Better mAP.
2. Global reasoning (unlike sliding-window or region-proposal solutions). Contrast with Fast R-CNN.
3. Transfers across domains better.

Weaknesses: Location accuracy less than SOTA, particularly for small objects.

Looks at entire image at once.
Predicts all bounding boxes for all classes at once.
Divides image into SxS grid. Each cell is responsible for an object if the object's center falls within the cell. Each cell predicts $B$ bbs.

**Format**: BB is $x,y,h,w,confidence$, where $x,y$ are the center of the object relative to the cell and $w,h$ are relative to the whole image and $c$ is $Pr(obj) \times IoU$.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTgyNDY4MjA4NSwtMTEwOTk5NjE5LC0xOT
kzODAwMTIyLDIwNTY1MDg1NywtMTYwOTc0NDcyMiwtMjU2MjIw
NzU3LC0xNDI5NDQ3MTA3LDI3Mjk2MjY1MywxODgwODcwNTI2LD
E3ODY5ODIxODRdfQ==
-->