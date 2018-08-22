# Class2Str: End to End Latent Hierarchy Learning
https://arxiv.org/pdf/1808.06675.pdf

**Problem**: Classes which a classifier must predict typically are not completely independent.

**Proposal**: Learn a latent heirarchy of the classes in e2e training to improve classification.

**Predecessor**: Most similar is HD-CNN. Yan et al. first train a fine grained classifier and then use the confusion matrix to identify some coarse grained categories. A separate fine grained classifier is trained for each of these coarse grained categories to improve the accuracy. Thus, HD-CNN discovers a 2 level hierarchy with a 2 stage training process, while we discover a multilevel hierarchy using a single stage end to end training.

**Label Encoding**: This paper uses encoding other than one-hot. Other alternative encodings which came up were (1) to replace the 1-hot representation of the labels by an error correcting code (Hadamard code) and (2) DeViSe suggests to replace the 1-hot vector representation of the labels by a word embedding which is learnt separately to model language. (1) satisfies a minimum distance property. (2) uses nearest neighbours on cosine similarity to compute loss, which imposes higher cost than this paper's loss computation.

**Hierarchy Encoding**: A hierarchy can be represented by a binary tree. A traversal from root to leaf can be represented as a binary string (left=0, right=1).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIwOTMwNjI4MjVdfQ==
-->