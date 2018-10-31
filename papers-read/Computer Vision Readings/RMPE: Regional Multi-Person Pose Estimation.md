# [RMPE: Regional Multi-Person Pose Estimation](http://openaccess.thecvf.com/content_ICCV_2017/papers/Fang_RMPE_Regional_Multi-Person_ICCV_2017_paper.pdf)

@inproceedings{fang2017rmpe,
                  title={RMPE: Regional Multi-person Pose Estimation},
                  author={Fang, Hao-Shu and Xie, Shuqin and Tai, Yu-Wing and Lu, Cewu},
                  booktitle={ICCV},
                  year={2017}
                 }

Task: detect poses of multiple persons in an image, even when the bounding boxes are inaccurate.
Proposal: a regional multi-person pose estimation (RMPE) framework/

2 alternatives for design: (1) two-step framework first detects bbs then estimates pose within bb; (2) part-based framework detects body parts independently, then assembles them to form human poses. This paper uses two-step framework.

Weakness: depends on quality of bb. We aim to do well even on bad bb. SPPE Stacked Hourglass model is very vulnerable to poor bb.

**Contributions**

1. a symmetric spatial transformer network (SSTN)
2. a parallel SPPE (single-person pose estimator) branch
3. a pose NMS to remove redundant pose estimates (for overlapping bbs)
4. a pose-guided human proposal generator (PGPG) to augment training samples

**SSTN: (STN + SDTN)**

The STN and SDTN are 2D affine transformations which just transform the coordinates of a human proposal into a new coordinate space (in which the target human is centred) and back again (to the coordinates of the original proposal. The cycle of STN and SDTN is what makes this a "*symmetric* spatial transformer network."

The SPPE takes place *between* the STN and SDTN.

The STN was developed by [18]. The SDTN is just the inverse of the


<!--stackedit_data:
eyJoaXN0b3J5IjpbNjcwNDQ2Mjc2LDE1NzQ0MjgxMzhdfQ==
-->