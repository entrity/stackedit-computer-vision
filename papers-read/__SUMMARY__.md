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
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDI3OTM2MzIzLC0xNTk0NTQyMjE1LDcyMT
E5NDU4NCwxNDkxMzQ2Nzg1LC04MjY3OTY1NTAsMjA0MDkzNzk0
N119
-->