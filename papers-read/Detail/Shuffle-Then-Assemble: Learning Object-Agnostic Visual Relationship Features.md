# [Shuffle-Then-Assemble: Learning Object-Agnostic Visual Relationship Features](https://arxiv.org/pdf/1808.00171.pdf)

VRD (Visual Relation Detection) is of value b/c it helps models for {VQA, visual chatbot, image captioning, etc} learn underlying reasoning rather than just training set bias.

Labeling relations is more expensive than labeling objects: requires combinatorial checks. Results in long-tailed datasets, biased toward dominant combinations.

**Solution**: learn *visual relationship features*, not object features. Use a self-supervised/unsupervised method to do so.

**Visual Relationship Features**: Learning visual relationship features instead of object features means that the conv layers are object-agnostic. Thus they should generalize better to unseen objects. The pretraining method is called **Shuffle-Then-Assemble**. (Pretraining on an image classification task wouldn't avoid the bias.)

**Shuffle** is to discard the paired object alignments. **Assemble** is to create a pair-recover problem. (1) The RoI features learnt in the shuffle step should encode non-object-specific info. (2) The unsupervised assemble step allows exploration of more possible relationships

Works on generic triplets.

**Related work** falls into two lines of effort: (1) message passing between the to object features and (2) exploitation of subj-obj statistics (as from language priors and dataset bias)
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTA2MTA2MTAwLDczNjY1ODc0NSwtNTExNT
EzNDI3LC0xNDk4NDMxMTI0LDIyMTIwOTU4NCw0OTEyMzM3NDdd
fQ==
-->