# Introduction 

This repository contains the assets that will be used to containerize the WebRTC peerconnection_client sample.  It will eventually contain all of the automation scripts and customized peerconnection_client sample code.


## How to run Dockerfile

```bash
chmod +x peerconnection_client
sudo docker build -t local/webrtc-peerconnection-client .
sudo docker run local/webrtc-peerconnection-client
```

## Old Dockerfile Command [TROUBLESHOOTING]

```bash
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" local/webrtc-peerconnection-client
```

## How to Run Binary

```bash
chmod +x peerconnection_client
./peerconnection_client
```


## View Binary Library Dependencies

```bash
ldd -v peerconnection_client
```


## Dockerhub Image Location

https://cloud.docker.com/repository/registry-1.docker.io/michaeldeongreen/webrtc-peerconnection-client


## Relevant Links

[ldd Guide](https://www.howtoforge.com/linux-ldd-command/)

[General Overview of WebRTC](https://webrtc.org/native-code/development/)

[WebRTC peerconnection_client Source Code](https://webrtc.googlesource.com/src/+/master/examples/peerconnection/)

[Run GUI Apps Inside Docker](https://medium.com/@SaravSun/running-gui-applications-inside-docker-containers-83d65c0db110)

[How to run X server using xserver-xorg-video-dummy driver on Ubuntu](https://techoverflow.net/2019/02/23/how-to-run-x-server-using-xserver-xorg-video-dummy-driver-on-ubuntu/)

[DEBIAN_FRONTEND ENVIRONMENT VARIABLE](https://stackoverflow.com/questions/39085462/xdummy-in-docker-container)

[Run Linux Command in Background and Detach](https://www.tecmint.com/run-linux-command-process-in-background-detach-process/)