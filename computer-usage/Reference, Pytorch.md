# Pytorch Reference
## Installation
1. Check installed version of CUDA: `/usr/local/cuda/bin/nvcc --version`
2. Check installed version of Python: `python --version`
3. See https://pytorch.org/ to learn installation command. Probably something like `conda install pytorch=0.4.1 torchvision cudatoolkit=9.0 -c pytorch`


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
eyJoaXN0b3J5IjpbLTE1NDI0NDAzMjIsNjgwNDQ0OTQ2LDEwMj
QyMDQ1OTQsLTE4MTE5MzcwMTYsMzY0OTIyOTY4XX0=
-->