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

Supports linearity hypothesis: "others have argued the reason adversarial examples exist is not due to blind spots int he highly non-learn nerual network, but due only to the locally-linearl nature of neural networks."

## Review other atta k algorig=thsm

**L-BFGS** Rather than minimize $||x-x'||^2_2$ s.t. $C(x') = l, x' \in [0,1]^n$, minimize $c \times ||x-x'||^2_2 + \text{loss}_{F,t}(x')$ s.t. $x' \in [0,1]^n$
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjE0NDU1MzMyNywtOTc1NjY2NTUxXX0=
-->