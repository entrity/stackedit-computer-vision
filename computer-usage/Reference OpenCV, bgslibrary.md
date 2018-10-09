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
```bash
git clone --recursive https://github.com/andrewssobral/bgslibrary.git
cd bgslibrary && mkdir build && cd build
cmake -D OpenCV_DIR=$opencvdir -D BGS_PYTHON_SUPPORT=ON ..
make -j8
PYTHONPATH="${PYTHONPATH}:$(pwd)/" # (add 'bgs.so' to your Python path)
export PYTHONPATH
cd .. && python Demo.py
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3MjUxNDI3OTJdfQ==
-->