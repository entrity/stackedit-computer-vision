# CUDA

- `nvidia-smi` - prints GPUs and their current load
- `export CUDA_VISIBLE_DEVICES=1,2` env variable to set for pytorch to use given gpu(s)

### CUDA compute capability (architecture) for nvcc

Find the compute capability at https://developer.nvidia.com/cuda-gpus.

For instance, vision2 currently has one *GeForce GTX 1080 Ti* and two *Tesla K40c*. I got this information by running `nvidia-settings`, but an occluded list of gpus can also be had from `nvidia-smi`.

So for vision2, I have compute capability 6.1 and 3.5. So in calls to `nvcc`, I provide the arguments:
```
-gencode arch=compute_61,code=sm_61 \
	-gencode arch=compute_35,code=sm_35
```

# Conda

- `source activate <env>` Enter environment

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1OTE5MDQ0NCwtMjczNTg4NzMwLDkyMD
A2MjI1MCw5NjkyODExNzksLTEwODcxNTAxNjhdfQ==
-->