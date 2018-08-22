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

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEyNDIyNjUxMjhdfQ==
-->