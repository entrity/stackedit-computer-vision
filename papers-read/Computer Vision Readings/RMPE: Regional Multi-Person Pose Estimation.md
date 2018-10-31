# [RMPE: Regional Multi-Person Pose Estimation](http://openaccess.thecvf.com/content_ICCV_2017/papers/Fang_RMPE_Regional_Multi-Person_ICCV_2017_paper.pdf)

@inproceedings{fang2017rmpe,
                  title={RMPE: Regional Multi-person Pose Estimation},
                  author={Fang, Hao-Shu and Xie, Shuqin and Tai, Yu-Wing and Lu, Cewu},
                  booktitle={ICCV},
                  year={2017}
                 }

**Task**: detect poses of multiple persons in an image, even when the bounding boxes are inaccurate.
**Proposal**: a "regional multi-person pose estimation (RMPE) framework"

2 alternatives for design: (1) two-step framework first detects bbs then estimates pose within bb; (2) part-based framework detects body parts independently, then assembles them to form human poses. This paper uses two-step framework.

Weakness: two-step framework depends on quality of bb. We aim to do well even on bad bb. SPPE Stacked Hourglass model is very vulnerable to poor bb.

**Contributions**

1. a symmetric spatial transformer network (SSTN)
2. a parallel SPPE (single-person pose estimator) branch
3. a pose NMS to remove redundant pose estimates (for overlapping bbs)
4. a pose-guided human proposal generator (PGPG) to augment training samples

**SSTN: (STN + SDTN)**

Proposal regions are fed into the STN.

The STN and SDTN are 2D affine transformations which just transform the coordinates of a human proposal into a new coordinate space (in which the target human is centred) and back again (to the coordinates of the original proposal. The cycle of STN and SDTN is what makes this a "*symmetric* spatial transformer network."

The SPPE takes place *between* the STN and SDTN.

The STN was developed by [18]. The SDTN is just the inverse of the STN.

**Parallel SPPE**

In parallel with the SPPE branch that follows STN, another SPPE branch is executed. The parallel SPPE branch is *not* followed by SDTN, and its weights are *frozen* during training (both SPPE branches are just off the shelf).

The purpose of this branch "is to back-propagate center-located pose errors to the STN module" so that the STN will learn to center-locate the pose.

This parallel branch is discarded during testing.

**Parametric pose NMS**

Redundant proposals (human detections) lead to redundant pose estimations. Previous NMS techniques are not accurate or not efficient enough.

As usual, the most confident candidate (pose) "is selected as reference, and some poses close to it are subject to elimination." This paper's pose elimination criterion is:

$$d(P_i,P_j|\Lambda,\lambda) \leq \eta$$

The distance function $d$ between two given candidates is the sum of two terms: (1) the confidence of both candidates ($K_{Sim}$) and (2) the distances between each pair of keypoints ($H_{Sim}$).

The four parameters used here ($\eta$, $\sigma_1$, $\sigma_2$, $\lambda$) are *learned* (thus the NMS is parametric, not hyperparametric).

**Proposal Generator (PGPG) for data augmentation**

During training, for each annotated pose (gt), look up the corresponding *atomic pose*, then generate offsets to $x$ and $y$ values (for each keypoint) by dense sampling according to the probability distribution described below. This create augmented training proposals.

To compute *atomic poses* take all the samples int he training set, align them s.t. their torsos have the same length, then compute cluster centers using k-means. These centroids are the atomic poses (archetypes).

The distribution of relative offset between the detected bb and the gt varies by pose. So given the set of atomic poses and the set of annotated poses which belong to each cluster, we can approximate $P(\delta_B|Pose)$ (the probability of a bb offset for a given pose),
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTI0ODQzODY5OCwtNDQyMDQ2NTYzLDE3Nj
YxOTQ3MjgsMTU3NDQyODEzOF19
-->