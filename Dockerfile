# Docker Ubuntu VNC desktop + pygame + Wing IDE for Python
# docker build -t docker-ubuntu-vnc-desktop .
# docker run -p 6080:80 -v /dev/shm:/dev/shm deshnil2000/docker-ubuntu-vnc-pygame-wingide
# Use in conjunction with nginx-proxy container and docker-browser container
# then docker run --volume "/var/run/docker.sock:/var/run/docker.sock" -d -e VIRTUAL_HOST=game.proxy.chainapp.live --net nginx-proxy -t eshnil2000/docker-browser

FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt-get -y update  \
    && apt-get install -y git python3-pip wget libxcb-xkb-dev\
    && apt --fix-broken -y install \
    && pip3 install pygame

RUN wget https://wingware.com/pub/wing-101/7.2.2.0/wing-101-7_7.2.2-0_amd64.deb \
&& dpkg -i wing-101-7_7.2.2-0_amd64.deb
