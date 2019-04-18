echo Creating Azure Container Instance $ACI_NAME

# get azure container registry username and password
ACR_USERNAME="$(az acr credential show -n $ACR_NAME --query username --output tsv)"
ACR_PASSWORD="$(az acr credential show -n $ACR_NAME --query passwords[0].value --output tsv)"

# create azure container instance
az container create \
    --resource-group ${RESOURCE_GROUP} \
    --name ${ACI_NAME} \
    --registry-login-server ${ACR_NAME}.azurecr.io \
    --registry-username ${ACR_USERNAME} \
    --registry-password ${ACR_PASSWORD} \
    --image "${ACR_NAME}.azurecr.io/webrtc-peerconnection-client" \
    --dns-name-label ${ACI_DNS_LABEL}

# output logs
az container logs \
    --resource-group ${RESOURCE_GROUP} \
    --name ${ACI_NAME}