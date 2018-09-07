## [faster-rcnn.pytorch](https://github.com/jwyang/faster-rcnn.pytorch)

1. enter a python 3 environment with dependencies installed
2. update `arch` in Makefile (see [Reference, CUDA])
3. Run:
```
export PATH="${PATH}:/usr/local/cuda/bin/"
export CFLAGS=-std=c99
cd lib && ./make.sh
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbNjMxNDg5MjczXX0=
-->