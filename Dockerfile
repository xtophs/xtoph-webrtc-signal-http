# base ubuntu image
FROM ubuntu:18.04

# update base image libraries
RUN apt-get update --fix-missing -y

# install libgtk-3-0 x86_x64 libraries
RUN apt-get install libgtk-3-0 -y

# set noninteractive flag and install xdummy
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install xserver-xorg-video-dummy

# copy binary into container
COPY peerconnection_client /usr/bin

# copy x.org config file into container
COPY dummy-1920x1080.conf /usr/bin

# copy entry.sh into container and
COPY entry.sh /usr/bin

# set working directory
WORKDIR /usr/bin

# set execute permissions on entry.sh
RUN chmod +x entry.sh
RUN chmod +x peerconnection_client

# entry point call to binary
CMD ["./entry.sh"]