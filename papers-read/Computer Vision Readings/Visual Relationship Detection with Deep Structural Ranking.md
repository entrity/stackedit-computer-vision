# [Visual Relationship Detection with Deep Structural Ranking](http://vipl.ict.ac.cn/uploadfile/upload/2018030615400539.pdf)

**Task:** visual relationship detection

## Method

**Appearance**: VGG16, then pass RoIs through 2 FC layers. Combine feature vectors of s and o with vector for union area.

**Spatial**: concatenate 4-d location vector of s and o with binary masks for s and o (downsampled to 32x32). 

Didn't finish reading. I changed projects.
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTM5Nzg3MjA2XX0=
-->