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

[Context-Dependent Diffusion Network for Visual Relationship Detection](https://arxiv.org/abs/1809.06213)
: Visual relationship detection. Create two graphs to represent spatial and appearance information. These become adjacency matrices $A$, which get extended into tensors, where each layer is a power of $A$. We'll multiply features by these tensors to get a diffusion of the influence each node has on each other. In semantic graph, nodes are object cats, and edge weight is ~number of triplets in dataset that differ from each other by only the two objects in consideration. In appearance graph, nodes are objects in a single image, and edge weights are [we can only guess]. Really impressive design.

[Detecting Visual Relationships with Deep Relational Networks](http://openaccess.thecvf.com/content_cvpr_2017/papers/Dai_Detecting_Visual_Relationships_CVPR_2017_paper.pdf)
: Use an DR-Net to approximate (and surpass) a CRF for predicting posterior probabilities, which are used in visual relationship detection. This paper also introduces appealing appearance and spatial features, as well as a filtering neural network to decide which object pairs to consider from the $n(n-1)$.

[Visual Relationship Detection with Deep Structural Ranking](http://vipl.ict.ac.cn/uploadfile/upload/2018030615400539.pdf)
: visual relationship detection



[Actor and Observer: Joint Modeling of First and Third-Person Videos](https://arxiv.org/abs/1804.09627)
: Presentation of Charades-Ego dataset and ActionObserverNet model for embedding 3rd-person and 1st-person video into a common space.

[Charades-Ego: A Large-Scale Dataset of Paired Third and First Person Videos](https://arxiv.org/pdf/1804.09626.pdf)
: Short, additional description of Charades-Ego dataset
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTI1MjYyODEyNCwtMTYzOTAxODM3Nl19
-->