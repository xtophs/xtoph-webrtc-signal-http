echo Creating Resource Group ${RESOURCE_GROUP}

# create resource group
az group create \
    --name ${RESOURCE_GROUP} \
    --location ${ACI_LOCATION}