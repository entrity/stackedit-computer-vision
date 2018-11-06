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

**L-BFGS** Approximate: rather than minimize $||x-x'||^2_2$ s.t. $C(x') = l, x' \in [0,1]^n$, minimize $c \times ||x-x'||^2_2 + \text{loss}_{F,t}(x')$ s.t. $x' \in [0,1]^n$
Optimized for L2 distance. Repeatedly solve this optimization problem for multiple values of $c$ to find $c$ that yields advx of min distance.

**FGSM** Optimized for $L_\infty$ distance. Designed to be faster rather than producing close advxs. Variant: iterative gradient sign.

**JSMA** Jacobian-based Saliency Map Attack. Targeted. Optimized under $L_0$ distance. Compute a saliency map using the gradient; saliency is how likely a given pixel's perturbation will change the model's label output. Pick the most salient pixel in the map and modify it. Repeat until success or too many pixels have changed to be satisfactory. Variants: JSMA-Z and JSMA-F depending on whether the logits or the softmax outputs are used.

**Deepfool**. Untargeted. Optimized for $L_2$ distance. Efficient and produces less distortion than L-BFGS. Envision classification space as linearly separable and identify optimal examples for each class; then given a natural image, move it a step toward target optimal example. Repeat.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjEwNTY1OTA2OCwtOTc1NjY2NTUxXX0=
-->