# Detecting Visual Relationships with Deep Relational Networks
http://openaccess.thecvf.com/content_cvpr_2017/papers/Dai_Detecting_Visual_Relationships_CVPR_2017_paper.pdf

**Task:** visual relationship detection
**Proposal:**

## Contributions
1. DR-Net: 
2. Move state of the art R@50 from 47.9% to 80.8% (relationship recognition) and 53.5% to 88.3% (predicate classification)

## Pipeline

1. **Faster RCNN** for object detection
2. Neural network **filters out some of the possible pairs** b/c $n(n-1)$ is too many. Input is spatial configurations and object categories.
3. **Joint recognition** module
	1. A CNN processes *union box* to yield appearance feature for a *pair* of objects.

## Notes

A joint model would not be scalable ("not suitable for generic applications," "excessively large number of classes and the imbalance among them").

## Related Work
1. First, limited to specific types of relations (spatial or action). Usually hand-crafted features or simple heuristics.
2. Eventually, non-joint models
3. Vedantam [47] used synthetic clip-arts to train non-joint model.
4. Fang [48] treat object cats and predicate cats uniformly as words.
5. Lu [1] classifier combines appearance and language features.
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTQ5NTk1M119
-->