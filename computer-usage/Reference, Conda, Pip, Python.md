# Conda

## Installing Conda
Go to https://conda.io/miniconda.html. Download the bash script, and run it.

## Command reference
- `source activate <env>` Enter environment
- `conda env list`
- `conda --info envs`
- `conda install python=3.5` Change environment's python version
- `conda create -n <name> [python=3.6]`
- `conda install <module> [-c <channel>}`
- `conda install torch=0.4.0 -c pytorch`

## Building my environment
```
conda create -n gen python=3.6
conda activate gen
pip install scikit-image scipy easydict sklearn joblib ipython opencv-python
conda install torchvision pytorch=0.4.0 cuda91 -c pytorch
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIwMjMzNjMwODEsLTE5NjI3NzM2NTYsLT
I4MTUyNjc0MCwtMTYzNzAwODYyMSw2MzQ5MjQ4MDMsMTcyODQy
NDc4NCwtOTI2MDY5NjE5XX0=
-->