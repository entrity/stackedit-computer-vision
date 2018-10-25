# [3D Social Saliency from Head-mounted Cameras](http://www.cs.cmu.edu/~hyunsoop/nips/NIPS12.pdf)

**Bottom line**: present a method to reconstruct a 3D social saliency field and localize 3D gaze concurrences from videos taken by head-mounted cameras on multiple people.

Improving scene understanding by seeing where multiple people in the scene are gazing (social saliency).

## Method
Reconstruct 3D from video using "structure from motion."
Camera pose is recovered using a RANSAC embedded Perspective-$n$-Point algorithm.
Use motion capture to provide ground truth.

### Calibration

Have pairs of people look at each other's camera while moving back and forth and side to side. This gives us transformation between (camera's angle and gaze angle) and (camera's center and head center). The transformation is applied simply as $y = Ry^w - RC$ where $y^w$ is the point of regard, R is camera orientation, C is camera center. (This transforms the real-world $y^w$ to the wearer's camera-centered coordinate system.)

### Mode seeking

Compute cone of gaze in previous step. These are probabilistic distributions of points of regard. Superposition these distributions to get saliency fields of scene. A "mean-shift" algorithm yields modes in this field.

For any point and gaze ray, a Gaussian can evaluate the distance of said point from said gaze. For a point $x$ in the scene, $f(x)$ gives the average of these Gaussian evaluations. 

Gradients of $f(X)$ are followed in this field (mean-shift algorithm) to find modes, i.e. the concurrences.

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5MjE1NDc4MThdfQ==
-->