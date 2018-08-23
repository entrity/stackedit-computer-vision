# [Shuffle-Then-Assemble: Learning Object-Agnostic Visual Relationship Features](https://arxiv.org/pdf/1808.00171.pdf)

VRD (Visual Relation Detection) is of value b/c it helps models for {VQA, visual chatbot, image captioning, etc} learn underlying reasoning rather than just training set bias.

Labeling relations is more expensive than labeling objects: requires combinatorial checks. Results in long-tailed datasets, biased toward dominant combinations.

**Solution**: learn *visual relationship features*, not object features. Use a self-supervised/unsupervised method to do so.

**Visual Relationship Features**: Learning visual relationship features instead of object features means that the conv layers are object-agnostic. Thus they should generalize better to unseen objects. The pretraining method is called **Shuffle-Then-Assemble**. (Pretraining on an image classification task wouldn't avoid the bias.)

**Shuffle**: this means that the mapping of RoI to object class is discarded. Or the mapping of obj1 to obj2 (sub and obj) is discarded so that we can attempt to recover it in unsupervised manner 

**Assemble**: obj1 may align to obj4 with relationship "sit." obj2 may align to obj6 with relationship "hold." The pretraining is performed as unsupervised adversarial domain transfer, where the domain transfer is the relationship.?

**Shuffle** is to discard the paired object alignments. **Assemble** is to create a pair-recover problem. (1) The RoI features learnt in the shuffle step should encode non-object-specific info. (2) The unsupervised assemble step allows exploration of more possible relationships

Works on generic triplets.

**Related work** falls into two lines of effort: (1) message passing between the to object features and (2) exploitation of subj-obj statistics (as from language priors and dataset bias)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNTg4ODY2NjIsNzM2NjU4NzQ1LC01MT
E1MTM0MjcsLTE0OTg0MzExMjQsMjIxMjA5NTg0LDQ5MTIzMzc0
N119
-->