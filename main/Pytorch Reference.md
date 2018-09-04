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


<!--stackedit_data:
eyJoaXN0b3J5IjpbLTg5NjM2NDM2MV19
-->