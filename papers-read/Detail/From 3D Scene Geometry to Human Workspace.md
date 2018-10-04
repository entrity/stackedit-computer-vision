# [From 3D Scene Geometry to Human Workspace](http://www.cs.cmu.edu/~abhinavg/affordances/)

**Task**: human-centric understanding of scene. Use "affordances," defined as opportunities for physical interactions.

Given a scene, predict all possible actions that are consistent with the scene geometry. Use poses instead of semantic categories like "sittable" or "touchable."

Aim: generalize to unseen poses (e.g. for sittable objects of different dimensions).

## Data
Working with indoor scenes. Scene geometry is represented as voxel-based Manhattan world.

3D poses from mocap. Manually annotate "exemplar" pose (archetype?) and support/interaction surfaces,

## Method
7 poses:
1. s

Insight: only 2 constraints on pose relevant for embedding in 3D geometry:
1. the space/volume occupied by pose - volumes cannot intersect
2. the surfaces contacted by pose - pose must be supported by surfaces in the scene

Discretize space around the human into blocks. Collection of blocks is 3x5x7 ($x\times y\times z$)
3. Is block occupied by human?
4. Does block require external support? In what direction? (Simplify by using only 3 orthogonal orientations for support)

Binary tensor represents whether each block in discretized scene is occupied. 3D correlation between scene and human computes the set of valid locations for a pose.

Create set of *interaction blocks* showing where interaction surfaces or support surfaces must be present. 3D correlation finds places where pose is supported.

To accommodate squishy bodies and surfaces, constraints are relaxed by eroding surfaces for *free space constraint* and dilating surfaces for *support constraint*.

## Estimating geometry
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3MzY5OTI3NjIsLTE1MTU0MjM4NDEsMj
E0NzM1NjgxNiwtMTc1NDQyNzQxMV19
-->