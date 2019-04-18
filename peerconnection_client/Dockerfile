# base ubuntu image
FROM ubuntu:18.04

# update base image libraries
RUN apt-get update --fix-missing -y

# install libgtk-3-0 x86_x64 libraries
RUN apt-get install libgtk-3-0 \
    xserver-xorg-video-dummy \
    -y

# set noninteractive flag and install xdummy
ENV DEBIAN_FRONTEND noninteractive

# copy binary and config into container
COPY app/* /usr/bin/

# set working directory
WORKDIR /usr/bin

# set execute permissions on entry.sh
RUN chmod +x entry.sh
RUN chmod +x peerconnection_client

# entry point call to binary
CMD ["./entry.sh"]