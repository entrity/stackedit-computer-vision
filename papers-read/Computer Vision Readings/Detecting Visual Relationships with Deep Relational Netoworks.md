# [Detecting Visual Relationships with Deep Relational Networks](http://openaccess.thecvf.com/content_cvpr_2017/papers/Dai_Detecting_Visual_Relationships_CVPR_2017_paper.pdf)

**Task:** visual relationship detection
**Proposal:**

## Contributions
1. DR-Net: 
2. Move state of the art R@50 from 47.9% to 80.8% (relationship recognition) and 53.5% to 88.3% (predicate classification)

## Pipeline

1. **Faster RCNN** for object detection
2. Neural network **filters out some of the possible pairs** b/c $n(n-1)$ is too many. Input is spatial configurations and object categories.
3. **Joint recognition** module
	1. Appearance: A CNN processes *union box* to yield appearance feature for a *pair* of objects.
	2. Spatial: A binary mask for subj and obj (2 masks) are downsampled, then passed through 3 CNN layers to make 64-d vectors.
	3. Statistical: DR-Net models posterior probabilities (for $r,s,o$)

### DR-Net

The appearance and spatial features are concatenated and passed to DR-Net, along with appearance features of the individual objects.

DR-Net is an MLP, where inputs are fed specifically to different layers in an attempt to approximate a CRF, though it performs *better* than a CRF in their experiments. The aim of the design is specifically for relational modelling.

Writers view DR-Net as unrolling an iterative approximation of a CRF, sort of how an RNN is unrolled.

## Notes

A joint model would not be scalable ("not suitable for generic applications," "excessively large number of classes and the imbalance among them").

Tested on VRD and sVG (large subset of Visual Genome).

## Related Work
1. First, limited to specific types of relations (spatial or action). Usually hand-crafted features or simple heuristics.
2. Eventually, non-joint models
3. Vedantam [47] used synthetic clip-arts to train non-joint model.
4. Fang [48] treat object cats and predicate cats uniformly as words.
5. Lu [1] classifier combines appearance and language features.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTYxNjc5NjU4NF19
-->