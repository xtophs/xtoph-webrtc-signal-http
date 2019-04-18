echo Creating Azure Container Registry

# create azure container registry
az acr create \
    --name ${ACR_NAME} \
    --resource-group ${RESOURCE_GROUP} \
    --sku ${ACR_SKU} \
    --location ${ACR_LOCATION} \
    --admin-enabled true


# grant execute permissions
chmod +x peerconnection_client

# Option - 1: build and re-tag image for azure container registry locally - faster
#docker build -t local/webrtc-peerconnection-client .
#docker tag local/webrtc-peerconnection-client "${ACR_NAME}.azurecr.io/webrtc-peerconnection-client"
#az acr login --name ${ACR_NAME}
#docker push "${ACR_NAME}.azurecr.io/webrtc-peerconnection-client"    

# Option - 2: build on server with az acr build - slower
az acr build \
    --registry ${ACR_NAME} \
    --image webrtc-peerconnection-client .