#!/bin/sh
export GITHUB_USER=""

# Craete secret for GitHub Token
sed -e "s;___GITHUB_USER___;${GITHUB_USER};g" \
./taskRun-git-clone.yaml | kubectl create -f -