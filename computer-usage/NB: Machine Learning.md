If calculating "labels" or something to go into the loss term that doesn't come from the network itself, probably `detach` those components from the graph. 

For examples, consider my attempt at the KL Divergence loss in 
<!--stackedit_data:
eyJoaXN0b3J5IjpbNTA5ODcxMTAxXX0=
-->