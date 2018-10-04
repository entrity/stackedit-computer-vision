# [From 3D Scene Geometry to Human Workspace](http://www.cs.cmu.edu/~abhinavg/affordances/)

**Task**: human-centric understanding of scene. Use "affordances," defined as opportunities for physical interactions.

Given a scene, predict all possible actions that are consistent with the scene geometry. Use poses instead of semantic categories like "sittable" or "touchable."

Aim: generalize to unseen poses (e.g. for sittable objects of different dimensions).

## Data
Working with indoor scenes. Scene geometry is represented as voxel-based Manhattan world.

3D poses from mocap. Manually annotate "exemplar" pose (archetype?) and support/interaction surfaces,

Use indoor scene dataset from Hedau et al [11]

## Method
7 poses:

1. sitting upright
1. sitting reclined
2. lying down
3. reaching for vertical surface (4 different poses)

Insight: only 2 constraints on pose relevant for embedding in 3D geometry:
4. the space/volume occupied by pose - volumes cannot intersect
5. the surfaces contacted by pose - pose must be supported by surfaces in the scene

Discretize space around the human into blocks. Collection of blocks is 3x5x7 ($x\times y\times z$)
6. Is block occupied by human?
7. Does block require external support? In what direction? (Simplify by using only 3 orthogonal orientations for support)

Binary tensor represents whether each block in discretized scene is occupied. 3D correlation between scene and human computes the set of valid locations for a pose.

Create set of *interaction blocks* showing where interaction surfaces or support surfaces must be present. 3D correlation finds places where pose is supported.

To accommodate squishy bodies and surfaces, constraints are relaxed by eroding surfaces for *free space constraint* and dilating surfaces for *support constraint*.

## Estimating geometry
<!--stackedit_data:
eyJoaXN0b3J5IjpbNjY0ODE3MDY3LC0xNTE1NDIzODQxLDIxND
czNTY4MTYsLTE3NTQ0Mjc0MTFdfQ==
-->