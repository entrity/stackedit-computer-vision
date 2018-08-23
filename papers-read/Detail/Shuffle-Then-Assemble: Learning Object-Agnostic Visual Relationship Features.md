# [Shuffle-Then-Assemble: Learning Object-Agnostic Visual Relationship Features](https://arxiv.org/pdf/1808.00171.pdf)

VRD (Visual Relation Detection) is of value b/c it helps models for {VQA, visual chatbot, image captioning, etc} learn underlying reasoning rather than just training set bias.

Labeling relations is more expensive than labeling objects: requires combinatorial checks. Results in long-tailed datasets, biased toward dominant combinations.

**Solution**: In the conv layers, learn *visual relationship features*, not object features. Use a self-supervised/unsupervised method to do so. (Pretraining on an image classification task preserves a bias for particular objects in a given relationship.)

**Visual Relationship Features**: Learning visual relationship features instead of object features means that the conv layers are object-agnostic. Thus they should generalize better to unseen objects. The pretraining method is called **Shuffle-Then-Assemble**.  The unsupervised assemble step allows exploration of more possible relationships

**Shuffle**: this means that the mapping of obj1 to obj2 (sub and obj) is discarded so that we can attempt to recover ("assemble") it in unsupervised manner.

**Assemble**: All the RoI feature maps belong in two domains A and B. The objects should all map from one domain to another in the sense that they select a partner to which to be related in this image. E.g. obj1 may align to obj4 with relationship "sit." obj2 may align to obj6 with relationship "hold." The pretraining is performed as unsupervised adversarial domain transfer.

**Shuffle** is to discard the paired object alignments. **Assemble** is to create a pair-recover problem. (1) The RoI features learnt in the shuffle step should encode non-object-specific info. (2) 
Works on generic triplets.

**Related work** falls into two lines of effort: (1) message passing between the to object features and (2) exploitation of subj-obj statistics (as from language priors and dataset bias)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTUzNzc5NzM0NSwxNjM4NjI1MTk4LDczNj
Y1ODc0NSwtNTExNTEzNDI3LC0xNDk4NDMxMTI0LDIyMTIwOTU4
NCw0OTEyMzM3NDddfQ==
-->