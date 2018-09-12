**Tags**
- ![present]! - to share at reading group. (if already shared, remove this)
- ![toolbelt]! - something to use

![present]! [Learning Linear Transformations for Fast Arbitrary Style Transfer](https://arxiv.org/pdf/1808.04537.pdf)
: Instead of using a SVD decomposition of a Gramm matrix for style features, this model uses miniature CNNs to learn a transformation matrix $T$ which is applied to the content features in order to compute the style features. This is performed at multiple levels in an autoencoder; thus there are multiple style losses and one content loss. The result is fast (140 fps) and flexible. A shallower network leads to less distortion; the learned $T$ allows for good results with a shallower encoder.

[Hierarchical Attention: What Really Counts in Various NLP Tasks](https://arxiv.org/pdf/1808.03728.pdf)
: Existing basic attention mechanisms learn only the low-level features while a multi-level attention mechanism learns only the high-level features. This is bad when source texts are long. The proposed hierarchical attention mechanism (HAM) learns all levels of features and performs well on the reading comprehension task.

[Fake Sentence Detection as a Training Task for Sentence Encoding](https://arxiv.org/pdf/1808.03840.pdf)
: Training a language model to encode a sentence is hard, requires a lot of data and time. This paper proposes a simple task which reduces data, time, and parameters at the model's output layer: train the model to just discriminate between natural sentences and sentences that have a word swap or word drop.

[Language Guided Fashion Image Manipulation with Feature-wise Transformations](https://arxiv.org/pdf/1808.04000.pdf)
: The paper has two goals for the task of editing an outfit image through natural sentences: (1) manipulate only the relevant parts of the image and (2) make it realistic. This paper uses a GAN which incorporates Feature-wise Linear Modulation (FiLM). They do not use/need segmentation maps.

[CT-GAN: Conditional Transformation Generative Adversarial Network for Image Attribute Modification](https://arxiv.org/pdf/1807.04812.pdf)
: In contrast to work that concatenates condition (random) features at some point in the generator, this includes dedicated, transformation-specific conv layers at the latent level. It has no need for a clamping strategy to maintain object identity information.

![present]! ![toolbelt]! [Class2Str: End to End Latent Hierarchy Learning](https://arxiv.org/pdf/1808.06675.pdf)
: Categories tend to be hierarchical. Performance may improve if one learns to predict a hierarchy instead of an arbitrary one-hot vector. The hierarchy is represented as a binary tree; a label is a binary string which represents a traversal of the tree from root to leaf.

[Shuffle-Then-Assemble: Learning Object-Agnostic Visual Relationship Features](https://arxiv.org/pdf/1808.00171.pdf)
: Unsupervised pretraining under adversarial domain transfer, in which each RoI selects another RoI as its partner yields performance increase. Generalization is helped by learning features for each RoI that are agnostic to classes but rather focus on being ready to find a partner. *(from Krishna)*

[Videos as Space-Time Region Graphs]([https://arxiv.org/abs/1806.01810](https://arxiv.org/abs/1806.01810))
: Current video action recognition methods don't do much to consider how individual objects in the video move and change over time; they mostly operate on scene features. This paper uses an RPN to get object proposals across time; makes two graphs (adjacency matrices) to relate proposals, then performs a graph convolution (GCN). 4.4% recognition boost. *(from Yong Jae)*

[Learning Human-Object Interactions by Graph Parsing Neural Networks](https://arxiv.org/pdf/1808.07962.pdf)


[Zoom-Net: Mining Deep Feature Interactions for Visual Relationship Recognition](https://arxiv.org/pdf/1807.04979.pdf)
: Instead of having spatial features and appearance features come from separate branches, learn spatially-aware appearance features. Also replaces one-hot encoding with a hierarchical encoding to work on much larger scale (number of predicates).

**Problem:** VRR.
**Proposal:** Zoom-Net learns spatially aware appearance features instead of having spatial and appearance features come from separate branches.

Zoom-Net stacks multiple SCA-Ms consecutively. Improves object recognition and learning of relations.

- **SCA-M** (Spatiality-Context-Appearance Module)
    - **Contrastive RoI Pooling Cell** - Makes sums of union-sized feature maps between sub-obj, sub-pred, and pred-obj. To do so, the sub and obj regions are RoI pooled, then deRoI pooled. The unpooled feature maps are placed in a union-sized feature map in the position which their features originally occupied; the rest of the region is set to zero. Thus, we effectively have message passing between two branches (SO, SP, or PO) with spatially aware features.
    - **Pyramid RoI Pooling Cell** - Not adequately explained.

## Contributions

- SCA-M
- IH-tree (Intra-hierarchical tree) - replaces one-hot classification encoding with multiclass hierarchical encoding
- effective on large-scale (lots of vaguely defined predicates instead of VRD's 70)

Uses Visual Genome dataset (VG), which has many more relations than VRD. Impressive scale: 1,957 predicates.

**Hierarchical class tree**

Object classes and predicate classes each get their own hierarchical tree, which is pre-computed (not learned).

The bottom of the tree is the class labels from VG. One layer up from that is made by using the part-of-speech tagger toolkit from NLTK [47] and NLTK Lemmatizer
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjAwMjAwMzQzNSwtMTYzNTA0NjY5MSwyMD
A0MzIwMjM5LC01OTA0NjkxNiwtMTQ3MTE1MjY2NSwtMTA2Njg1
NTI4MCwtMzExMDY5MjE5LC0xODc1MjM3MzIxLDQyNzkzNjMyMy
wtMTU5NDU0MjIxNSw3MjExOTQ1ODQsMTQ5MTM0Njc4NSwtODI2
Nzk2NTUwLDIwNDA5Mzc5NDddfQ==
-->