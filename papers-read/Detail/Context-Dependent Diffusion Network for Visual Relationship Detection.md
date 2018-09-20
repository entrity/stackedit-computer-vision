# [Context-Dependent Diffusion Network for Visual Relationship Detection](https://arxiv.org/abs/1809.06213)

**Problem** visual relationship detection
**Proposal** add contextual information: word semantic graph and visual scene graph, are constructed to encode global context interdependency

## Contributions
- context-dependent diffusion network (CDDN)

### Semantic Graph
Construct a graph to make those objects with similar semantics (for VRD share more information in relationship inference. *Elephant* and *horse* are not visually or semantically similar, but they should be semantically similar for our purposes because both can be ridden by people.

## Related Work
- Early on, simple relationships only (spatial predicates) or human-object interaction
- Two categories: **joint model** (triplets form classes) & **separate model** (predicates form classes)
- Joint models don't scale because of long-tail distribution of triplets, combinatorial quantity
- Lu [25] did separate model with language priors but *not* end-to-end
- Zhang [45] considered predicate as low-dimensional translation vector between subject and object
- Li [21] proposed visual phrase guided CNN
- Dai [5] associate subj, obj, pred by use of statistical dependencies and spatial configurations
- Liang [23] combine more cues with ranking method
- Graph convolution methods have two categories: **spectral methods** & **spatial methods**. Eigen decomposition of spectral methods is expensive. Spatial methods aggregate neighbour nodes to model spatial relationships.
- diffusion cnn [2] performed diffusion process on each node
- PSCN [29] sorted neighbours, then performed convolutions on nodes
- NgramCNN [26] serialized each graph using concept of n-gram block
- ...

Current method stands apart by using global inter-object interaction cues. Also employs diffusion mechanism (on object attribute graphs).
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTY1Mjg1OTAyLDEyMDgyMzQ4MzEsLTMzNj
AxNDk4NywxMjU2OTU2MTk0LC0xNDkzMDg3NjA5XX0=
-->