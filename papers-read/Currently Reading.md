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

# [YOLO9000: Better, Faster, Stronger](http://openaccess.thecvf.com/content_cvpr_2017/papers/Redmon_YOLO9000_Better_Faster_CVPR_2017_paper.pdf) 2017

Better than YOLO: YOLO had low recall and high error in localization.

Changed network: simpler
1. include batchnorm, remove dropout
2. fine-tune classifier network at full resolution (448x448)
3. remove FC layers; use anchor boxes to predict BBs for each cell. (yields 1000+ proposals vs 98 from YOLO)
4. shrink res to 416x416 and remove a pooling layer to give 13x13 output, which has a center cell, since images tend to have an object in center
5. predict class and objectness (IoU) for every anchor box.

### Anchor boxes
AB's have to be picked, not learned. But they pick good ones by running k-means clustering on dataset, using $d(\text{box},\text{centroid}) = 1 - \text{IoU}(\text{box},\text{centroid})$.

Predict 5 BBs at each cell, and predict $x,y,w,h,o$ for each BB.

Constrain $x,y$ of BB by passing predicted $t_x,t_y$ through $\si$ to bound to [0,1].
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTkxMDA5NDc1LC02NDA0MTgxMywyMDcxMT
M0NDE5LC0xOTE3MDg5MjczLC0yMDM3MDg1Mzg4LC0yMDU0ODE4
NjgzLDM5ODIwNDUzMiwxMTc4MDIyMzQyLC04Nzc5MzcxMzcsMT
EyNjM3ODA2MiwtMTEwOTk5NjE5LC0xOTkzODAwMTIyLDIwNTY1
MDg1NywtMTYwOTc0NDcyMiwtMjU2MjIwNzU3LC0xNDI5NDQ3MT
A3LDI3Mjk2MjY1MywxODgwODcwNTI2LDE3ODY5ODIxODRdfQ==

-->