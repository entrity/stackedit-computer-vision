## CUDA

- `nvidia-smi` - prints GPUs and their current load
- `export CUDA_VISIBLE_DEVICES=1,2` env variable to set for pytorch to use given gpu(s)

### CUDA compute capability (architecture) for nvcc

Find the compute capability at https://developer.nvidia.com/cuda-gpus.

For instance, vision2 currently has one *GeForce GTX 1080 Ti* and two *Tesla K40c*. I got this information by running `nvidia-settings`, but an occluded list of gpus can also be had from `nvidia-smi`.

So for vision2, I have compute capability 

## Conda

- `source activate <env>` Enter environment

<!--stackedit_data:
eyJoaXN0b3J5IjpbOTIwMDYyMjUwLDk2OTI4MTE3OSwtMTA4Nz
E1MDE2OF19
-->