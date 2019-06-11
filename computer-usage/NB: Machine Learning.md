If calculating "labels" or something to go into the loss term that doesn't come from the network itself, probably `detach` those components from the graph. 

For examples, consider my attempt at the KL Divergence loss in [https://github.com/entrity/ML-Term-Proj/blob/master/shared/kl_loss.py](https://github.com/entrity/ML-Term-Proj/blob/master/shared/kl_loss.py). Compare it to Bokun's implementation of the loss in [https://github.com/eelxpeng/dec-pytorch/blob/master/lib/dec.py](https://github.com/eelxpeng/dec-pytorch/blob/master/lib/dec.py) or [https://github.com/entrity/dec-pytorch/blob/master/lib/dec.py](https://github.com/entrity/dec-pytorch/blob/master/lib/dec.py)

Also consider the changes I had to make to the Q-learner for playing Pong. Look for git revisions that include the `detach` function call: 
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTMyMjE0MjUzXX0=
-->