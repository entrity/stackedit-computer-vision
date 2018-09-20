# [Context-Dependent Diffusion Network for Visual Relationship Detection](https://arxiv.org/abs/1809.06213)

**Problem** visual relationship detection
**Proposal** add contextual information: word semantic graph and visual scene graph, are constructed to encode global context interdependency

## Contributions
- context-dependent diffusion network (CDDN)

### Semantic Prior Graph / Global Semantic Graph $G_1$
Construct a graph to make those objects with similar semantics (in VRD) share more information. *Elephant* and *horse* are not visually or semantically similar, but they should be semantically similar for our purposes because both can be ridden by people.

$G_1 = \{V_1,E_1\}$, where $V_1$ is  all object categories (across dataset) and $E_1$ is the connection strength between object pairs.  Weight $e_{ij}$ is the number of pairs of triplets in the dataset where $i$ and $j$ are subjects and $p$ and $o$ are in common or $i$ and $j$ are objects and $s$ and $p$ are in common. (Then the weights are normalized with $\frac{1}{N}$.)

For example, *person riding horse* and *person riding elephant*, only have different objects, so the objects *horse* and *elephant* will be connected in the graph with a $+1$.

### Spatial Scene Graph $G_2$

For two objects in a scene, $e_{ij}$ is $1$ if either IoU exceeds a threshold or distance falls beneath a threshold, else $0$.

### Diffusion Layer

This graph diffusion mechanism builds a latent object representation $z$ from either of the two graphs.

The crux of it is that it takes an adjacency matrix $A$ (representing one of the two foregoing graphs) and makes a tensor $\hat{A}$, in which each layer is a power of $A$. Thus each layer shows how many paths of $pow$ hops exist between any two nodes. Multiply $\hat{A}$ by the semantic embedding (word2vec?) of all of the object words $X$, then elementwise multiply by learned weights $W$, then perform a nonlinear function $f$ (for instance a FC layer).

$$Z = f(W\odot \hat{A}X)$$


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
eyJoaXN0b3J5IjpbLTExMDIyNDM4MjksLTE0ODAyMjExNTEsMT
IwODIzNDgzMSwtMzM2MDE0OTg3LDEyNTY5NTYxOTQsLTE0OTMw
ODc2MDldfQ==
-->