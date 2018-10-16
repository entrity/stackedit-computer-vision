# [Explaining and Harnessing Adversarial Examples](https://arxiv.org/pdf/1412.6572.pdf)

Ian J. Goodfellow, Jonathon Shlens & Christian Szegedy Google Inc., Mountain View, CA {goodfellow,shlens,szegedy}@google.com

Published as a conference paper at ICLR 2015

>Generic regularization strategies such as dropout, pretraining, and model averaging do not confer a significant reduction in a model’s vulnerability to adversarial examples, but changing to nonlinear model families such as RBF networks can do so.

>More nonlinear models such as sigmoid networks are carefully tuned to spend most of their time in the non-saturating, more linear regime for the same reason

>RBF networks are naturally immune to adversarial examples, in the sense that they have low confidence when they are fooled.

>RBF units are unfortunately not invariant to any significant transformations so they cannot generalize very well. We can view linear units and RBF units as different points on a precision-recall tradeoff curve. 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTExMTEyMjI5ODEsMTM0ODAzOTk1OSwtND
gxODI5NjU0XX0=
-->