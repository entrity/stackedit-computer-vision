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
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjA0MDkzNzk0N119
-->