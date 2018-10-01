# [3D Social Saliency from Head-mounted Cameras](http://www.cs.cmu.edu/~hyunsoop/nips/NIPS12.pdf)

**Bottom line**: present a method to reconstruct a 3D social saliency field and localize 3D gaze concurrences from videos taken by head-mounted cameras on multiple people.

Improving scene understanding by seeing where multiple people in the scene are gazing (social saliency).

## Method
Reconstruct 3D from video using "structure from motion."
Camera pose is recovered using a RANSAC embedded Perspective-$n$-Point algorithm.

### Calibration

Have pairs of people look at each other's camera while moving back and forth and side to side. This gives us transformation between (camera's angle and gaze angle) and (camera's center and head center). The transformation is applied simply as $y = Ry^w - RC
<!--stackedit_data:
eyJoaXN0b3J5IjpbODU3MTM5MTg3LC04NTE0Mzg4NjcsLTIwOD
AzMDg4OTAsLTExMTQxNDYyOTBdfQ==
-->