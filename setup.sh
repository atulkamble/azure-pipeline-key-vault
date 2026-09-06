#!/usr/bin/env bash
set -e

RG="kv-training-rg"
LOCATION="centralindia"
KV="<globally-unique-key-vault-name>"
SECRET_NAME="db-password"

az group create -n "$RG" -l "$LOCATION"
az keyvault create -g "$RG" -n "$KV" -l "$LOCATION" --enable-rbac-authorization true

# Enter a demo secret without putting it in shell history.
read -s -p "Enter demo secret: " SECRET_VALUE
echo
az keyvault secret set --vault-name "$KV" --name "$SECRET_NAME" --value "$SECRET_VALUE" >/dev/null
unset SECRET_VALUE

echo "Created Key Vault and secret."
