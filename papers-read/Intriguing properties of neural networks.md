# [Intriguing properties of neural networks](https://arxiv.org/pdf/1312.6199.pdf) 
Szegedy 2014

## Findings
1. Semantic analysis of individual units in neural nets is unlikely to contain semantic information. (Not sure how they got this; didn't see support in their discussion.)
2. Neural networks are unstable against small changes to their inputs. They coin **"adversarial examples"** for perturbed images.
3. Propose a scheme for finding adversarial examples

## Semantics of individual units
Traditional computer vision systems (like HOG) allow "one to inspect the individual coordinates of the feature space, and link them back to meaningful variations in the input domain."  Similar prev work in neural nets interpret activation of a hidden unit as a meaningful feature; prev work looks for input image which maximize the activation of this unit.

This paper finds that "the natural basis is not better than a random basis for inspecting properties of $\phi(x)$." (I don't understand what the 'basis' is or what this sentence means, but it looks like this is the crux of the argument for this point.)

## Adversarial examples
There is a *smoothness prior*, to wit, the assumption that for a small enough radius, area near correctly classified training examples can also be correctly classified. "Our main result is that for deep neural networks, the smoothness assumption that underlies many kernel methods does not hold." (Consider adversarial examples, which are very close to their source images.)

1
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM1MDQwNjkwNl19
-->