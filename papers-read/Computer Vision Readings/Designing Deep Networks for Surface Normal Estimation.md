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

## 

**Top-down** network looks at entire image, produces coarse global interpretation. Predicts room layout.
**Bottom-up** network works on patches in sliding window. Predicts edge labeling.
The extra tasks (layout, edges) enforce the human-centric constraints.
TD and BU have complementary errors. (Whatever that means.)
**Fusion** network integrates TD and BU predictions.

**Edge label** task is classification: {convex, concave, occluding, no edge}.
For **surface normal** and **room layout**, we discretize output space (and then frame problem as classification).

For **surface normal**, learn a codebook of values using k-means and a Delaunay trian-
gulation cover. The normal is a weighted combination of the codewords for its triangle.

For **room layout**, learn a codebook over box layouts via k-medoids. Codewords serve as classes.

## Fusion Layer

Input is concatenation of image maps:

1. coarse global output (TD)
2. layout (TD)
3. local surface normals (BU)
4. edge labels (BU)
5. vanishing point-aligned coarse output (TD)
6. original image

The subnets are trained individually, not e2e.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTM4Mzk5NjY2Nl19
-->