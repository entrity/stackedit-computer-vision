# [Designing Deep Networks for Surface Normal Estimation](https://arxiv.org/abs/1411.4958)

Use CNN to estimate surface normals from an image. Make use of recent decades' traditional work on 3D scene understanding.

Follow the work of Eigen [5] who used CNN to predict depth in image. Frame it as a regression problem. Coarse-level architecture predicts coarse depth; fine-level architecture predicts fine depth.

## Themes from scene understanding

1. Fuse top-down, bottom-up
Build a top-down and a bottom-up network. Learn a fusion network.
2. Human-centric constraints
Work in Manhattan world (man-made scenes, orthogonal directions). Model room as a box.
3. Local structure
Use edges for information.

Top-down network looks at entire image, produces coarse global interpretation.
Bottom-up network works on patches in sliding window.
<!--stackedit_data:
eyJoaXN0b3J5IjpbNjkyMTcxMzg1LDg0MTA2OTU5OCwxMjMxNT
c0NTA3XX0=
-->