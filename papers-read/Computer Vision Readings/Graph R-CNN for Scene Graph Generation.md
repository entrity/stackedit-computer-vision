# Graph R-CNN for Scene Graph Generation

**Problem:** scene graphs may be useful for visual scene understanding, but a fully-connected graph scales poorly, and a fix of randomly sub-sampling edges to keep is too naive.
**Proposal:** Graph R-CNN, a framework to leverage object-relationship regularities in order to intelligently sparsify and reason over candidate scene graphs.

**Contributions**
- Graph R-CNN framework
  - RePN (relation proposal network)
  - aGCN (attentional graph convolutional network)
- SGGen+ metric

## Details

**SGGen+** overcomes weakness of the common metrics for triplet prediction that an object misclassification minor error (boy vs man) is heavily penalized even when most details in the predicted triplet are correct. (Predicting predicate only sidesteps this weakness but fails to reflect test-time performance.)

SGGen+ computes recall for singleton entities (objects, predicates), pair entities (<object, attribute>), and triplets (<subj, predicate, obj>).

**RePN** doesn't pass pairs of objects through an MLP because the number of pairs is quadratic. Instead, each object goes through two projection functions (MLPs) $\phi$ and $\psi$ to project as subject and object respectively. Then the projection of a subject and an object are paired and passed through a single matrix multiplication (and sigmoid) to yield a "relatedness" score.

The top $K$ scoring pairs are taken; then NMS is applied to yield $E$ (set of edges).

## TMI
Uses Visual Genome dataset. Uses 50 relation classes, 150 object classes.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQyMDIxODgyMV19
-->