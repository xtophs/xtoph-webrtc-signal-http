#!/bin/bash

cat > /usr/bin/webrtc.json << EOF 
{
    "signalingAddress": "${SIGNAL_SERVER_ADDRESS}",
    "signalingPort": ${PORT},
    "relayAddress": "turn:${TURN_SERVER_ADDRESS}",
    "relayUsername": "${TURN_USER_NAME}",
    "relayPassword": "${TURN_PASSWORD}"
}
EOF

echo launching xdummy

# launch xdummy, detach and run in background
X -config dummy-1920x1080.conf </dev/null &>/dev/null &

echo launching peerconnection_client

# launch the webrtc peerconnection client
DISPLAY=:0 ./peerconnection_client

./peerconnection_client