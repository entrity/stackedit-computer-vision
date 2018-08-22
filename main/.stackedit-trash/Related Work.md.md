

# Visual relationship detection with language priors

### FINAL LOSS FUNCTION:
ranking loss ...
	+ loss that favours seen relationships over unseen relationships ...
	+ loss that reduces pairwise variance between seen relationships ...

### VISUAL APPEARANCE MODULE
No~ explicit representation of spatial information? What do they mean when O1 and O2 are bounding boxes?

### LANGUAGE MODULE

### RANKING LOSS
uses visual module projection times language module projection

### MY REFLECTIONS
Relationships don't inform object classification or localization. No e2e in this sense. I infer this b/c they say $V()$ is convex. Couldn't we let relationships and object classification reinforce each other by learning jointly?

70 relationship categories. 100 object classes. 5000 images. How does it perform with more categories/classes?

How does this do on very small objects? Object pairs very distant from each other?

Could I enhance $K()$ but adding in a comparison between the subj-obj direction in the two relationships? I.e. The two subjects can be very distant, and the two objects can be very distant, but if the direction you move from subject to object in feature space is similar in the two Relationships, then maybe the relationships have similar likelihood. E.g. 

# Weakly-supervised learning of visual relations
Given image-level labels only. Learn relation detector, ~"learning triplets as a single unit but generalizing to unseen triplets (using seen terms)." This uses clustering, no deep learning. See DIFFRAC for clustering algorithm, based on Franke Wolfe Algorithm.

**SPATIAL REPRESENTATION** - 2 BB's, encoded as 6-D vector.

**APPEARANCE REPRESENTATION** - fc7 of Fast-RCNN, L2-normalized, compressed with PCA from 4096 to 300, concatenated, L2-normalized again

**VISUAL REPRESENTATION** - concatenate spatial and appearance representations: $r(os,oo),[a(os),a(oo)]$  (1000-dimension)

Based on DIFFRAC. Train a classifier (column in W) for each predicate.

Learn Z (labels) at the same time you learn W (weights).

The weak image annotation gives us an (s,r,o) triplet, which imposes the constraint on Z that at least one pair of objects in the image must match (s,r,o).

# DIFFRAC: a discriminative and flexible framework for clustering
Clustering is a good paradigm but traditionally limited to a few hundred data points.

Writers use a square loss instead of hinge loss in order to allow 10s of thousands of datapoints.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTk3NDI0Mjg2M119
-->