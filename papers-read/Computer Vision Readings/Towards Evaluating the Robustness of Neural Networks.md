# Towards Evaluating the Robustness of Neural Networks

2017. Carlini & Wagner. UC Berkeley 

**Bottom Line** Present the C&W attack(s).
- overcame defensive distillation, a formerly effective measure
- Found advx on 100% of images
- new SOTA
- required less distortion

2 approaches to evaluating robustness of net (against attack):
(1) prove a lower bound (harder)
(2) construct attacks that demonstrate an upper bound

**Code** available online: http://nicholas.carlini.com/code/nn_robust_attacks

**Datasets**: MNIST, CIFAR 10, Imagenet

C&W $L_0$ is the first attack that can cause targetted misclassificaiton ImageNet

<!--stackedit_data:
eyJoaXN0b3J5IjpbNzIwOTAwNzI3LC05NzU2NjY1NTFdfQ==
-->