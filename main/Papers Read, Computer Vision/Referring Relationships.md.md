Krishna, R., Chami, I., Bernstein, M., & Fei-Fei, L. (2018). Referring Relationships. https://doi.org/10.1109/CVPR.2018.00718
# Referring Relationships

**Goal**: disambiguate which objects in an image are the objects involved in a relationship, given a triplet $(subject,predicate,object)$.

### Method
Learn convolutional filters for each predicate for each direction ($s \rightarrow o$, $o \rightarrow s$): $F(P)$ and $F^{-1}(P)$. These filters indicate where they think the subject's object (or the object's subject) fall in the image.

There are two steps, which get repeated $t$ times (where t is a hyperparameter). When the iterations are complete, two heatmaps are produced for the image; they indicate the location of the subject and object.

This is weakly supervised. Annotations are the triplets. The model locates the subject and object. 

### Attention module (step 1)
$$\hat{x} = Attention(\mu,S) = ReLU(\mu \cdot Emb(S))$$

inputs
: $S$ - The subject (or object) which will get a semantic embedding ($C$-dimensional). This is a *word2vec* or similar.
: $\mu$ - An $L\times L\times C$ representation of the image.

Outputs attention for the subject (or object) as an $L\times L$ estimate of its location over the whole image. (Why do they collapse the input to 1 channel?)

 **NB**
 : For the first iteration, the attention is not conditioned on the predicate at all (because no 'predicate shift' module has been run), so the attention is based only on the embedding and the appearance of the image.
 : For the first iteration, $\mu$ is the last activation layer of conv4 of ResNet50 (pretrained on ImageNet). It is $14\times 14\times 512$.

### Predicate shift module (step 2)
$$\hat{x}_{shift} = Sh^{-1}(\hat{x},P) = \bigcirc^n_l ReLU(\hat{y} * F^{-1}_l(P))$$

**inputs**
: $\hat{y}$ - The $L \times L$ attention map.
: $P$ - The predicate.
: $F_l^{-1}$ - The convolutional filter we are learning for (iteration $l$, predicate $P$, and direction $obj \rightarrow subj$)
: We also learn $F_l$ for calculating $\hat{y}_{shift}$ from $\hat{x}$.

Convolve the filter over the object's attention representation. Pass that through a ReLU. Do this $n$ times.

Outputs a new estimate attention mask over where the model expects to find the subject, conditioned on the estimate of the location of the subject and vice versa.

-----

1. Use a pretrained CNN to extract feature maps: $\mu = L \times L \times C$
2. For each $L \times L$ region, determine whether it belongs to subj, obj, or neither:
	1. 2 random variables $X$ and $Y$:
		1. if $X_i > \tau$, then subject occupies region $i$
		2. if $Y_i > \tau$, then object occupies region $i$
3. Define a graph whose nodes correspond to image regions. Each region gets one node for $X$ and one for $Y$. All $x_i$ are connected to all $y_i$.
4. Maximize probability of all node values, given the feature maps $\mu$ and the triplet $R$.

Inference on a densely connected graph is expensive. Approximate it by mean field in Conditional Random Fields (CRF).


2 challenges
: 1 differing difficulty of object detection. E.g. zebra is easy to detect; ball is hard to detect. Knowing where person kicking is should help us figure out where ball is.
: 2 drastic appearance variance of predicates. Don't learn predicate from features but instead treat it as a mechanism for shifting attention from one object to another. Also condition the shift on image features b/c not all predicates are spatial ('drive' vs 'above').

<!--stackedit_data:
eyJoaXN0b3J5IjpbMzQxNDczNTExXX0=
-->