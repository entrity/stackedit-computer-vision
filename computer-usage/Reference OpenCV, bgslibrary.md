# OpenCV
https://docs.opencv.org/trunk/d7/d9f/tutorial_linux_install.html
https://github.com/opencv/opencv/releases/tag/3.4.3
Download and build from source:
```
wget https://github.com/opencv/opencv/archive/3.4.3.zip
unzip $whatever && cd $whatever
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release \
	-D CMAKE_INSTALL_PREFIX="$HOME/local" \
	-D PYTHON3_EXECUTABLE=/home/markham/miniconda3/envs/gen/bin/python \
	-D PYTHON_INCLUDE_DIR=/home/markham/miniconda3/envs/gen/include \
	-D PYTHON_LIBRARY=/home/markham/miniconda3/envs/gen/lib/libpython3.6m.so \
	-D PYTHON3_NUMPY_INCLUDE_DIRS=/home/markham/miniconda3/envs/gen/include/boost/python/numpy \
..
```

# bgslibrary
https://github.com/andrewssobral/bgslibrary/wiki/Wrapper:-Python#building-bgslibrary-with-python-support-on-linux
Supply OpenCV 3 (for the sake of python wrapper). Download source. Build:
```
cd $srcroot
mkdir build && cd build

```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTkyMjkwMDQ5OF19
-->