## [faster-rcnn.pytorch](https://github.com/jwyang/faster-rcnn.pytorch)

1. enter a python 3 environment with dependencies installed
2. update `arch` in Makefile (see [Reference, CUDA])
3. Run:
```bash
export PATH="${PATH}:/usr/local/cuda/bin/"
export CFLAGS=-std=c99
cd lib && ./make.sh
# For the sake of using it in another project
export PYTHONPATH="${PYTHONPATH}:`pwd`"
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTA4MjU4MTI0NV19
-->