#!/bin/sh
export GITLAB_USER=""
export GITLAB_TOKEN=""

# Craete secret for Gitlab Token
sed -e "s;___GITLAB_USER___;${GITLAB_USER};g" \
-e "s;___GITLAB_TOKEN___;${GITLAB_TOKEN};g"  \
./gitlab-token-secret.yaml | kubectl create -f -

# Create service account for the token
kubectl apply -f ./tekton-admin.yaml