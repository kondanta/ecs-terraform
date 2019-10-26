#!/bin/sh

set -e

# I assume repo github access token and account id already passed as an Environemnt Variable as
# GITHUB_TOKEN and ACCOUNT_ID
# We use github as the source and deploy trigger.

#####
cd terraform/

# Just in case, There's always possiblity that someone may introduce a new module. And new modules
# need to be initialized.
terraform init

terraform validate

terraform apply -auto-approve \
	  -var "github_token=$GITHUB_TOKEN" \
	  -var "account_id=$ACCOUNT_ID"
