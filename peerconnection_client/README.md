# Introduction 

This repository contains the assets to containerize the WebRTC peerconnection_client sample.  

## How to run Dockerfile

```bash
docker build -t <repo>/<containername> .
docker run <repo>/<containername>
```

## Deploy to ACI

```bash
az container create -g <resource group> \
    --name containernameI \
    --image containerimage \
    --location location \
    --environment-variables SIGNAL_SERVER_ADDRESS=signalingserveraddress \
        PORT= signalingserverport \
        TURN_SERVER_ADDRESS= ipordnsaddress \
        TURN_USER_NAME= username \
        TURN_PASSWORD= password
```