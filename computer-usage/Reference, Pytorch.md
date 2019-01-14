# Pytorch Reference
## Installation
Check installed version of CUDA: `/usr/local/cuda/bin/nvcc --version`

See https://pytorch.org/ to learn installation command.


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

## Converting models
### Convert from Tensorflow
https://discuss.pytorch.org/t/how-to-transfer-pretained-model-from-tensorflow-to-pytorch/6173
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE0OTkzOTIyNiwxMDI0MjA0NTk0LC0xOD
ExOTM3MDE2LDM2NDkyMjk2OF19
-->