# Visual Relationship Detection with Language Priors

Stanford. Cewu Lu, Ranjay Krishna, Michael Bernstei, Li Fei-Fei

**Task:** visual relationship detection

*Problem*: skew of rare relationships because relationships are combinatorial. Need to learn with relatively few examples, then. Contrast with [6], which required enough training examples for every possible triplet.
*Proposal*: (1) learn appearance of objects and predicates separately, then fuse them together. (2) learn language model that makes use of word semantic embeddings.

*New dataset*: **Visual Relationship Dataset (VRD)**

Use triplet $(obj_1,pred, obj_2)$ to denote relationships.

## Related Work
- leveraging statistics of object co-occurence; we instead study context or relationships in which objects co-occur
- learn spatial relationships btwn objects to improve segmentation
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1MjY1OTMyMzldfQ==
-->