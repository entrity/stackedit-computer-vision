<small>https://arxiv.org/pdf/1807.04897.pdf</small>

# TS 2 C: Tight Box Mining with Surrounding Segmentation Context for Weakly Supervised Object Detection

13 Jul 2018. State of the art on VOC.

Problem: bounding boxes tend to close in on highly discriminative parts of object.
Solution: use weakly-supervised segmentation to provide context to improve BB. The detector gets trained on candidates which were selected based on a function of the content of the BB and the context around the BB. 

**Training:**
1. Proposals go into a ConvNet to produce feature maps.
2. Feature maps go to Image Classification branch, which produces CAMs.
3. CAMs supervise Semantic Segmentation branch, which takes feature maps as input, then outputs segmentation confidence maps.
4. Segmentation confidence maps are used to evaluate objectness of the proposals. *This step is the $TS^2C$,*
5. Object Detection branch takes feature maps as input, 

Generate class-specific activation maps via ConvNet + Global Average Pooling. Those maps are used to weakly train a segmentation model. That model's segmentation is used to weakly train the detector model.

Objectness scores are assigned to pixels by means of confidence segmentation maps. The difference in average objectness scores for pixels within a given BB and in the context surrounding the BB is a measure of the quality of the BB.

## Other work

- Li [3] exploited contrastive relationship between a selected region and its mask-out image for proposal selection. *Weakness: selector is easily confused by remaining instances which respond highly even after the correct object is masked out.*
- Diba [8] used information from inferred segmentation. *Weakness: considers segmented confidence inside the proposals only, not in an enlarged context.*
- Kantorov [6] uses inside+outside information to improve classification, whereas this work uses inside+outside information to improve BB candidate selection.
- Tang [7] uses WSDDN (Weakly Supervised Deep Detection Network) and OICR (Online Instance Classifier Refinement), same as this paper.

## Loss function

$$L = L_{cls} + L_{seg} + L_{det}$$

- $L_{cls}$ - sum of losses for binary logistic regression over each of the classes

## Supervising segmentation

CAMs + saliency map, ignoring ambiguous pixels during training. Ambiguous pixels are any of the following:

1. not assigned a semantic label
2. foreground pixels of different categories that are inconflict
3. low-saliency pixles that fall in the foreground pixels

This yields the psuedo segmentation mask which is used to train the Segmentation Branch. 

## $TS^2C$

"Objectness" (i.e. candidate fitness) is $P_I - P_S$

## OICR

The Online Instance Classification Refinement module holds the Multiple Instance Classification Module and the Instance Refinement Module.

During training, selects candidates from a pool of 200, provided by $TS^2C$. (During testing, the Classification and Segmentation branches are unused.)

### Multiple Instance Classification Module

Two streams take the feature maps: stream 1 runs softmax on the individual proposals for classification; stream 2 runs softmax over all the proposals to estimate contribution of each proposal for each class (probability distribution of proposals for given class, I think). Then these two scores are element-wise multiplied to give a vector of class contribution scores to each proposal. Then these vectors are sum-pooled to create a single vector for the whole image, which should predict which class the image-level annotation holds.

Thus this module should learn to produce classification scores for each proposal. These scores are then refined by the Instance Refinement Module

($TS^2C$ is intended to combat the problem that on initialization, the this module may produce very bad selections (which would prevent the model from ever learning).)

### Instance Refinement Module

Selects the top-scoring proposal from the MICM (for the class matching the image-level label). Also selects proposals that have high overlap with the aforesaid. These selected proposals are then all used as supervision for the detection branch.

At initialization, parameters haven't learnt, so this cannot recognize proposals well. So the OICR weights loss according to training iteration. This goes into $L_{det}$.

## Failure cases

When semantically identical objects are linked together in the image, the model predicts a BB that covers all of them.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE4MjM5NDIwNTJdfQ==
-->