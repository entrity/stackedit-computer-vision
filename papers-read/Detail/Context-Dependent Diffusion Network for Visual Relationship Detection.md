# [Context-Dependent Diffusion Network for Visual Relationship Detection](https://arxiv.org/abs/1809.06213)

**Problem** visual relationship detection
**Proposal** add contextual information: word semantic graph and visual scene graph, are constructed to encode global context interdependency

## Contributions
- context-dependent diffusion network (CDDN)
## Related Work
- Early on, simple relationships only (spatial predicates) or human-object interaction
- Two categories: joint model (triplets form classes) v separate model (predicates form classes)
- Joint models don't scale because of long-tail distribution of triplets, combinatorial quantity
- Lu [25] did separate model with language priors but *not* end-to-end
- Zhang [45] considered predicate as low-dimensional translation vector between subject and object
- Li [21] proposed visual phrase guided CNN
- Dai [5] 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1Nzk1MzQ3MjAsMTI1Njk1NjE5NCwtMT
Q5MzA4NzYwOV19
-->