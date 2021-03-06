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
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQ2MjQxNDM3XX0=
-->