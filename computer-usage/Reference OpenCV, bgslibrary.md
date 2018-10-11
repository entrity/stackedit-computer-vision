# OpenCV
https://docs.opencv.org/trunk/d7/d9f/tutorial_linux_install.html
https://github.com/opencv/opencv/releases/tag/3.4.3
Download and build from source:
```bash
wget https://github.com/opencv/opencv/archive/3.4.3.zip
unzip 3.4.3.zip && cd opencv-3.4.3
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release \
-D CMAKE_INSTALL_PREFIX="$HOME/local" \
..
make -j8; make install
```

# bgslibrary
https://github.com/andrewssobral/bgslibrary/wiki/Wrapper:-Python#building-bgslibrary-with-python-support-on-linux
Build OpenCV 3 and install to `$HOME/local` (for the sake of python wrapper). Download source. Build:
```bash
git clone --recursive https://github.com/andrewssobral/bgslibrary.git && \
cd bgslibrary && mkdir -p build && cd build && \
cmake -D CMAKE_BUILD_TYPE=Release -D OpenCV_DIR=$HOME/local/share/OpenCV .. && \
make -j8
export PYTHONPATH="${PYTHONPATH}:$(pwd)/" # (add 'bgs.so' to your Python path)
cd .. && python Demo.py
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU5NTE2NjM0LC0yNjAzMTcyMDgsMTMzMj
YzNDc0NiwtNDE0MjIyMTQxLDExMjA5NDY3MCwtNDE0MjIyMTQx
LC0xNzQxNzA1NjksMjAwNDEyMjAxMCwxMTAwNjc4Mjk4LDExMD
UyNTI2ODMsMTc0OTEwNDk1NCwxNDQ0MTM1MzE1LC0xNDE2NzU0
ODYxLC00NzA0OTg2MjEsLTE3MjUxNDI3OTJdfQ==
-->