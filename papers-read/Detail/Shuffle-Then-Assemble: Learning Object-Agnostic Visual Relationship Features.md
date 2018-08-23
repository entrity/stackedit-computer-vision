# [Shuffle-Then-Assemble: Learning Object-Agnostic Visual Relationship Features](https://arxiv.org/pdf/1808.00171.pdf)

VRD (Visual Relation Detection) is of value b/c it helps models for {VQA, visual chatbot, image captioning, etc} learn underlying reasoning rather than just training set bias.

Labelling relations is more expensive than labelling objects: requires combinatorial checks. Results in long-tailed datasets, biased toward dominant combinations.

**Shuffle** is to discard the paired object alignments. **Assemble** is to create a pair-recover problem. (1) The RoI features learnt in the shuffle step should encode non-object-specific info. (2) The unsupervised assemble step allows exploration of more possible relationships
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE0OTg0MzExMjQsMjIxMjA5NTg0LDQ5MT
IzMzc0N119
-->