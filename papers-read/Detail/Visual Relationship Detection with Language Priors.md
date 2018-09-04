# Visual Relationship Detection with Language Priors

Stanford. Cewu Lu, Ranjay Krishna, Michael Bernstei, Li Fei-Fei

**Task** visual relationship d

Use triplet $(obj_1,pred, obj_2)$ to denote relationships.

*Problem*: skew of rare relationships because relationships are combinatorial. Need to learn with relatively few examples, then. Contrast with [6], which required enough training examples for every possible triplet.
*Proposal*: (1) learn appearance of objects and predicates separately, then fuse them together. (2) learn language model that makes use of word semantic embeddings.

*New dataset*: **Visual Relationship Dataset (VRD)**

## Related Work

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTAzNjE1ODY1Nl19
-->