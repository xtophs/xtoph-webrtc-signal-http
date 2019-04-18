#!/bin/bash
echo launching xdummy

# launch xdummy, detach and run in background
X -config dummy-1920x1080.conf </dev/null &>/dev/null &

echo launching peerconnection_client

# launch the webrtc peerconnection client
DISPLAY=:0 ./peerconnection_client

#./peerconnection_client