# Conda

- `source activate <env>` Enter environment
- `conda env list`
- `conda --info envs`
- `conda install python=3.5` Change environment's python version
- `conda create -n <name> [python=3.6]`
- `conda install <module> [-c <channel>}`
- `conda install torch=0.4.0 -c pytorch`

## My env

```
conda create -n gen python=3.6
conda activate gen
conda install scikit-image scipy
conda install torchvision pytorch=0.4.0 cuda91 -c pytorch
pip3 install easydict
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbNjM0OTI0ODAzLDE3Mjg0MjQ3ODQsLTkyNj
A2OTYxOV19
-->