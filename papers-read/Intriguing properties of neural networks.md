# [Intriguing properties of neural networks](https://arxiv.org/pdf/1312.6199.pdf) 
Szegedy 2014

## Findings
1. Semantic analysis of individual units in neural nets is unlikely to contain semantic information. (Not sure how they got this; didn't see support in their discussion.)
2. Neural networks are unstable against small changes to their inputs. They coin **"adversarial examples"** for perturbed images.

## Semantics of individual units
Traditional computer vision systems (like HOG) allow "one to inspect the individual coordinates of the feature space, and link them back to meaningful variations in the input domain."  Similar prev work in neural nets interpret activation of a hidden unit as a meaningful feature; prev work looks for input image which maximize the activation of this unit.

This paper finds that 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEwOTAzODQ4MTldfQ==
-->