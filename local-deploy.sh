#!/bin/bash

# set exit
set -e

# login into azure subscription
 az login

# set variables
. ./local-var.env

# call script to deploy resource group
. ./local-deploy-rg.sh

# call script to deploy azure container registry
. ./local-deploy-acr.sh

# call script to deploy azure container instance
. ./local-deploy-aci.sh