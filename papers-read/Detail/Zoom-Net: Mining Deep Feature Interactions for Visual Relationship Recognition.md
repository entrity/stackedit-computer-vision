# [Zoom-Net: Mining Deep Feature Interactions for Visual Relationship Recognition](https://arxiv.org/pdf/1807.04979.pdf)

**Task:** VRR.
**Proposal:** Zoom-Net learns spatially aware appearance features instead of having spatial and appearance features come from separate branches.

Zoom-Net stacks multiple SCA-Ms consecutively. Improves object recognition and learning of relations.

## Contributions

- SCA-M
- IH-tree (Intra-hierarchical tree) - replaces one-hot classification encoding with multiclass hierarchical encoding
- effective on large-scale (Uses Visual Genome dataset (VG), which has many more relations than VRD. Impressive scale: 1,957 predicates.)

## SCA-M (Spatiality-Context-Appearance Module)

- **SCA-M** (Spatiality-Context-Appearance Module)
    - **Contrastive RoI Pooling Cell** - Makes sums of union-sized feature maps between sub-obj, sub-pred, and pred-obj. To do so, the sub and obj regions are RoI pooled, then deRoI pooled. The unpooled feature maps are placed in a union-sized feature map in the position which their features originally occupied; the rest of the region is set to zero. Thus, we effectively have message passing between two branches (SO, SP, or PO) with spatially aware features.
    - **Pyramid RoI Pooling Cell** - Not adequately explained.


## **Hierarchical class tree**

Object classes and predicate classes each get their own hierarchical tree, which is pre-computed (not learned).

1. The bottom of the tree is the class labels from VG.
2. One layer up from that is made by using the part-of-speech tagger toolkit from NLTK and NLTK Lemmatizer to filter and normalize words s.t. ${"old\ man", "men", "tall\ man"} \in "man"$.
3. The top layer is achieved by clustering. For the object-classes tree, this is done by using a threshold of 0.65 on Leacock-Chodorow distance. For the predicate-classes tree, words are clustered semantically but split into super groups of prepositions and verbs. (A lower-level entity can be a child of both a preposition and a verb in the event that the entire predicate label is a verb phrase with a preposition.)

## Loss

The loss is:
$$L = L_s + L_p + L_o$$
...where the component parts are weighted hierarchical losses.

> The output of the subject/object branch is a concatenation of three independent softmax activated vectors corresponded to three hierarchical levels in the IH-tree. The loss Ls (Lo) is thus a summation of three independent softmax losses with respect to these levels, encouraging the intra-level mutual label exclusion and inter-level label dependency.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTExODA5ODQzOTVdfQ==
-->