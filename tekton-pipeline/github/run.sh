#!/bin/sh
export GITLAB_USER=""

# Craete secret for GitHub Token
sed -e "s;___GITLAB_USER___;${GITLAB_USER};g" \
./taskRun-bookinfo.yaml | kubectl create -f -