# [Explaining and Harnessing Adversarial Examples](https://arxiv.org/pdf/1412.6572.pdf)

Ian J. Goodfellow, Jonathon Shlens & Christian Szegedy Google Inc., Mountain View, CA {goodfellow,shlens,szegedy}@google.com

Published as a conference paper at ICLR 2015

## Linear vs nonlinear:

>We hypothesize that neural networks are too linear to resist linear adversarial perturbation

>Generic regularization strategies such as dropout, pretraining, and model averaging do not confer a significant reduction in a model’s vulnerability to adversarial examples, but changing to nonlinear model families such as RBF networks can do so.

>More nonlinear models such as sigmoid networks are carefully tuned to spend most of their time in the non-saturating, more linear regime for the same reason

>RBF networks are naturally immune to adversarial examples, in the sense that they have low confidence when they are fooled.

>RBF units are unfortunately not invariant to any significant transformations so they cannot generalize very well. We can view linear units and RBF units as different points on a precision-recall tradeoff curve. Linear units achieve high recall by responding to every input in a certain direction, but may have low precision due to responding too strongly in unfamiliar situations. RBF units achieve high precision by responding only to a specific point in space, but in doing so sacrifice recall.

## FGSM
Let $J(\theta, x, y)$  be the cost function. 
> ...obtaining an optimal max-norm perturbation of:
> $$\eta = \epsilon \times \text{sign}(\nabla_x J(\theta, x, y))$$
> We refer to this as the “fast gradient sign method” of generating adversarial examples
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDI5NzA4NzQ5LDE2MDgwNTM5NzMsLTE0Mj
g1MjM0NjhdfQ==
-->