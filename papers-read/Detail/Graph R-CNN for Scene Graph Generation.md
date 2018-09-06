# Graph R-CNN for Scene Graph Generation

**Problem:** scene graphs may be useful for visual scene understanding, but a fully-connected graph scales poorly, and a fix of randomly sub-sampling edges to keep is too naive.
**Proposal:** Graph R-CNN, a framework to leverage object-relationship regularities in order to intelligently sparsify and reason over candidate scene graphs.

**Contributions**
- Graph R-CNN framework
  - RePN (relation proposal network)
  - aGCN (attentional graph convolutional network)

**Details**

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE2ODAxOTAyOTMsLTE0NDkyNjE2NzRdfQ
==
-->