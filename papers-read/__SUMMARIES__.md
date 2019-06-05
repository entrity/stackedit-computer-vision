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
: does visual relationship detection

[Actor and Observer: Joint Modeling of First and Third-Person Videos](https://arxiv.org/abs/1804.09627)
: Presentation of Charades-Ego dataset and ActionObserverNet model for embedding 3rd-person and 1st-person video into a common space.

[Charades-Ego: A Large-Scale Dataset of Paired Third and First Person Videos](https://arxiv.org/pdf/1804.09626.pdf)
: Short, additional description of Charades-Ego dataset

[Ego2Top: Matching Viewers in Egocentric and Top-view Videos]
: Has a top-down camera viewing several people wearing front-facing cameras. Builds 2 graphs from training videos (one egocentric, one exocentric) where nodes correspond to what a particular person would see. Predicts which egocentric video corresponds to which person.

[EgoTransfer: Transferring Motion Across Egocentric and Exocentric Domains using Deep Neural Networks]
: Builds a model to map egocentric and excocentric video features to a common space using DNN. Also experimented with linear regression. Superior model depends on feature type (HOOF vs C3D).

[Joint Person Segmentation and Identification in Synchronized First- and Third-person Videos]
: Jointly perform segmentation and identification to the benefit of both tasks.

[Seeing Invisible Poses: Estimating 3D Body Pose from Egocentric Video](http://www.cs.utexas.edu/~grauman/papers/ego-pose-cvpr2017.pdf)
: Train on RGBD data. Using video from 1 chest-mounted camera, guess to which cluster of poses the current wearer's pose belongs. From there, guess pose.

[3D Social Saliency from Head-mounted Cameras](http://www.cs.cmu.edu/~hyunsoop/nips/NIPS12.pdf)
: Present a method to reconstruct a 3D social saliency field and localize gaze concurrences in 3D space from videos taken by head-mounted cameras on multiple people.

[From 3D Scene Geometry to Human Workspace](http://www.cs.cmu.edu/~abhinavg/affordances/)
: Estimate a 3D geometry of a scene from an image. Given 7 poses, find places in the scene where humans could assume any of the poses without intersecting objects and while having support for their bodies.

[People Watching: Human Actions as a Cue for Single View Geometry](https://arxiv.org/pdf/1411.4958.pdf)
: Use human pose estimation to inform estimation of room layout, for example using the constraint that the room must contain the detected humans.

[Explaining and Harnessing Adversarial Examples](https://arxiv.org/pdf/1412.6572.pdf)
: Ian Goodfellow looks at adversarial perturbations, explores theory that linear nature of models is what makes them vulnerable to adversarial examples (previously it was supposed that overfitting was the cause of this vulnerability), that and the fact that an adversarial example can move in any direction from a rather limited statistical space where the real-world examples reside.

[Intriguing properties of neural networks](https://arxiv.org/pdf/1312.6199.pdf)
: Coined "adversarial examples." Found that they transfer well.

[Adversarial Examples Are Not Easily Detected: Bypassing Ten Detection Methods](https://arxiv.org/abs/1705.07263v2)
: C&W show that 10 countermeasures against adversarial examples published in the last year can be overcome with the C&W method for generating advx. (Read for class ECS 235A.)

[RMPE: Regional Multi-Person Pose Estimation](http://openaccess.thecvf.com/content_ICCV_2017/papers/Fang_RMPE_Regional_Multi-Person_ICCV_2017_paper.pdf)
: SOTA on pose estimation in multi-person setting. They improve bounding boxes by means of SSTN and parallel SPPE. [AlphaPose](https://github.com/MVIG-SJTU/AlphaPose)

[Towards Evaluating the Robustness of Neural Networks](https://arxiv.org/pdf/1608.04644.pdf)
: The C&W (Carlini and Wagner) method of generating adversarial examples is presented.

[You Only Look Once: Unified, Real-Time Object Detection](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Redmon_You_Only_Look_CVPR_2016_paper.pdf) 2016
: Divide image into grid; each cell predicts $B$ bbs and $C$ class probabilities. Fastest object detector to date. Incorporates global view of image for fewer bg false positives.

[DeepPose: Human Pose Estimation via Deep Neural Networks](https://www.cv-foundation.org/openaccess/content_cvpr_2014/papers/Toshev_DeepPose_Human_Pose_2014_CVPR_paper.pdf)
: Uses a cascade of DNNs to regress pose keypoints. (I really like this cascade idea.)

(https://dspace.mit.edu/bitstream/handle/1721.1/6715/AIM-2003-009.pdf?sequence=2)
: Uses neat technique called Locality-Sensitive Hashing, which learns several hashing functions to index examples for example-based learning. (Can work in high dimensions where a k-nearest-neighbour search would be prohibitive.) Extends LSH to PSH (Parameter-Sensitive Hashing), which is sensitive to similarity in the parameter space instead of in the input space Uses Locally-Weighted Regression (LWR) on top of that.

Deep Spectral Clustering
: Common clustering approaches use a fixed embedding; we can improve by learning an embedding. DSCL has low-cost loss function, which doesn't require running clustering after each batch. Its gradient has a closed-form, linear in size of batch and quadratic in size of embedding. However, training requires ground-truth labels.

[A Semantic Loss Function for Deep Learning with Symbolic Knowledge](http://starai.cs.ucla.edu/papers/XuICML18.pdf) (2018)
: We want a differential loss function to train a model, but we also want to apply reasoning (i.e. constraints) to the output, which destroys the differentiability of the deep learner. So we contrive a "semantic loss function." Three examples of semantic losses which are successfully applied are one-hot constraint, ranking constraint, and path constraint.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNDI4ODU2NzksLTc0MTk5NTU0LDM4NT
k2OTk5LDExOTAyMjYwNDIsMTk0MDA4NzQ2MywtMTEwOTE5NTEy
MSwtMTI3NTUyMjI1LC00NTYzOTc0NzgsMTMzNTg5Mzg2Niw1Mj
I0ODQ0ODMsLTE1OTI3NTgzMDUsLTk2MzU3OTE1NCwyMjM5NzQ0
NDIsLTU2NzQ1NDAxNCwyMTM5OTE1NDczLC0xNTk5NzQwMTY4LC
03NDY4ODY2MzEsMTE0Mjg5MTAzMSwxMjUyNjI4MTI0LC0xNjM5
MDE4Mzc2XX0=
-->