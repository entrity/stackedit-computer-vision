# [RMPE: Regional Multi-Person Pose Estimation](http://openaccess.thecvf.com/content_ICCV_2017/papers/Fang_RMPE_Regional_Multi-Person_ICCV_2017_paper.pdf)

Task: detect poses of multiple persons in an image, even when the bounding boxes are inaccurate.
Proposal: a regional multi-person

2 alternatives for design: (1) two-step framework first detects bbs then estimates pose within bb; (2) part-based framework detects body parts independently, then assembles them to form human poses. This paper uses two-step framework.

Weakness: depends on quality of bb. We aim to do well even on bad bb. SPPE Stacked Hourglass model is very vulnerable to poor bb.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMzEyNDQ1NzkzXX0=
-->