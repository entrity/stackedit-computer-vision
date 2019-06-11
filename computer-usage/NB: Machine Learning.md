If calculating "labels" or something to go into the loss term that doesn't come from the network itself, probably `detach` those components from the graph. 

For examples, consider my attempt at the KL Divergence loss in . Compare it to Bokun's implementation of the loss in [https://github.com/eelxpeng/dec-pytorch/blob/master/lib/dec.py](https://github.com/eelxpeng/dec-pytorch/blob/master/lib/dec.py) or [https://github.com/entrity/dec-pytorch/blob/master/lib/dec.py](https://github.com/entrity/dec-pytorch/blob/master/lib/dec.py)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU0MjAwMzgxNF19
-->