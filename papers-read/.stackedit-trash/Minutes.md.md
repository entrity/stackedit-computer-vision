## 2018 07 06
- Y request that I compute values for 'unseen', not just 'seen'
	- T says check out config file and set `opts.zeroshot = 1`
	- I need to email the others the results
- K proposes a graph attention network (GAT)
	- score pairs of objects for all (s,o) labels
	- rank scores
	- combine $s$' features with $o$'s features (concat? most important $o$?)
	- weighted sum of 3rd parties to make $(s,o,context)$
- Y wants to learn BB (triplet is annotation); K&M want to learn relation ($(s,o)$ is annotation)
- start in fully supervised setting - hard to win, hard to impact
- Y&K have a paper for us to read. K will send it. By Bengio "Graph Attention Networks"
- (for weighted sum, consider distance as weights)
- K: wants siamese network
- Y: each image has a graph, but graphs cannot connect across images
- M: what is edge cost? (if just visual, then no graph needed)
- ASSIGN: look for and read additional related work
- MKT are to meet Tues to come up with starter algorithm besides the basic algo from "Graph Attention Networks"

## 2018 07 10
K,T,M met to develop an algorithm, per Y's instruction.

We resolved that **annotations** should consist of a predicate, and we should assume that we have a trained object detector. Our **goal** is to disambiguate which entities in the image are the subject and object.

### Ideas to combine

- YK: Implement Graph Attention Network
- Y: Jitter the bounding boxes. They should still yield the same relation classification.
- K: Use a siamese network and semantic similarity loss (at final feature layer). Use MIL.
	- Visual similarity shall be measured with a distance metric on feature vectors for the region proposal.
	- We shall determine the number of relations that we wish to identify, but they shall not be supervised.
	- Similar instances are based on:
		1. identical predicate
		2. visually similar subjects
		3. visually similar objects
- K: Average features of all objects (or all object pairs) in the image and treat that as an additional feature in the classification.
- K: End-to-end training. (Don't freeze features in object detector.)

### Other ideas
- K: hallucinate action
- M: Discriminate between a subject (or object) with a particular predicate and those without that predicate. E.g. grab a person from 'person kicking ball' image and a person from a 'person eating sandwich' image. Perform MIL to find a contrastive loss (different). Then do it with 'person kicking ball' and 'person kicking bed' for a contrastive loss (similar).
	- K was concerned about sparsity of data. M suggested fetching web images and performing NLP on the captions. K decided we should avoid use of NLP.

### To Do

K instructed T&M to implement a fully-supervised predicate classifier, omitting siamese character.


## 2018 07 11
### Immediately
Build a fully-supervised classifier. It should just be a few FC layers.
average or take max of object appearance feature of objects in an image

## 2018 07 13
K: In testing, as in training, we'll use the GT BB's to generate extra features (not candidate BB's)
Split work: Tyler does data augmentation; Markham does GAT and Siamese implementations
Start with generating baseline results: e2e, fully supervised
Y: We should use Resnet 50 to start (move to 101 if need be)
K: start w/out e2e (frozen Resnet)

What should number of PCA features be?
K: look at reconstruction loss 
YL check out eigenvalues
Y: if not a principled method, try 1000 (to match visual features) $\pm 25\%$

Y: Re. Krishna's idea to hallucinate action, we can consider it, but it would be ancillary to the thrust of our work

K: 'switching' for data augmentation is done with features, not pixels (but could be done with pixels)

Y: I'll be in Korea 3.5 weeks

Y: Desired outcome for the next month:
1. understand GAT paper deeply, well enough to recreate it
2. Do literature reviews as you work
Y: Make a habit of looking at Arxiv titles first thing in the morning. Read anything relevant. (30-40 new CS papers per day.)

M: I liked Referring Relations (Ranjay Krishna). Can we use that?
Y: K or I will read the paper and get back to you on how the loss works.

Y: Project website has video: in-depth paper review
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTU3Njg3Nzk2N119
-->