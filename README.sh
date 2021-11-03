#!/bin/bash

# terraform sample
# src_provider=/home/axe/workshop/terraform-provider-vmworkstation
# $src_provider/make build

export TL_DEBUG=true
export TF_LOG=TRACE # INFO, DEBUG, TRACE
export TF_LOG_PATH="terraform.log"

//local development provider
export TF_CLI_CONFIG_FILE=${PWD}/dev.tfrc
// vmws debug for the provider
export VMWS_DEBUG=true

terraform init
terraform validate
terraform plan

rm terraform.log
//rm /home/axe/vmware/vm-tf1 -rf
terraform apply -auto-approve
cat terraform.log
