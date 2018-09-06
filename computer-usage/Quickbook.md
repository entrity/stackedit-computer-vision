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

# Pytorch Reference

## Training Step

```
self.model.forward(minibatch)
self.optimizer.zero_grad()
loss = self.loss_fn(prediction, ground_truth)
self.loss_history[iter] = loss
loss.backward() # compute gradients
self.optimizer.step() # update model parameters
```

## Select GPU(s)

```bash
export CUDA_VISUAL_DEVICES=<csv of device ids>
export CUDA_VISUAL_DEVICES=1
export CUDA_VISUAL_DEVICES=0,2
```

## Python Debugger

```python
import pdb
...
pdb.set_trace()
...
```

# MATLAB Reference

## MATLAB Debugger

```matlab
DBSTOP if error
DBSTOP in FILE at LINENO
dbstop in infer at 28 % for file 'infer.m'
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzMDE3MjYxNSwtMTU5MTkwNDQ0LC0yNz
M1ODg3MzAsOTIwMDYyMjUwLDk2OTI4MTE3OSwtMTA4NzE1MDE2
OF19
-->