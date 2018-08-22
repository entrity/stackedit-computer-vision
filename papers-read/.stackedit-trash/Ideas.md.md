- Krishna would like to use a Siamese network and contrastive loss to achieve weak supervision.
- Krishna has asked us to think about how we might have graph edges not just between objects (or region proposals) in a single image but across images in the dataset.
	- I think it might do to look for images that have the same predicate and subjects (or objects) which are similar in *word2vec* feature space. Then we can look for nearest neighbours between region proposals across the two images and try to learn as if those are the two subjects (or objects).
		- Krishna raises the question of how test-time will not be handicapped if we do this.
- I'd like to add an additional loss for trying to learn features that do not focus on object classification but rather on subject+predicate classification or predicate+object classification.
<!--stackedit_data:
eyJoaXN0b3J5IjpbNjkwODE0MTA3XX0=
-->