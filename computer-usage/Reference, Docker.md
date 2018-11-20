## Running GUI programs on Docker
See http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

> There are a few different options to run GUI applications inside a Docker container like using [SSH with X11 forwarding](http://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/), or [VNC](http://stackoverflow.com/a/16311264) but the simplest one that I figured out was to share my X11 socket with the container and use it directly.
> ```
> docker run -ti --rm \
>   -e DISPLAY=$DISPLAY  \
>   -v /tmp/.X11-unix:/tmp/.X11-unix \
>   firefox
> ```

## Installing Docker without root
Not possible, as far as I know: https://stackoverflow.com/a/48474153/507721

## Launch Container
```bash
# docker run -v <mount-share> <image> <command>
# CPU e.g.
docker run -v /sharedfolder:/root/sharedfolder ufoym/deepo bash
# GPU e.g.
nvidia-docker run -v /sharedfolder:/root/sharedfolder ufoym/deepo bash
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTc4MDY0MzYxNCwtMTM5OTI3MzU0MiwtNT
Y5Mzk0MTkwXX0=
-->