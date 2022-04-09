export GITHUB_USER  = ""
export GITHUB_TOKEN = ""

# Craete secret for GitHub Token
sed -e "s;___GITHUB_USER___;${GITHUB__USER};g" \
-e "s;___GITHUB_TOKEN___;${GITHUB__TOKEN};g"  \
./github-token-secret.yaml | kubectl create -f -

# Create service account for the token
kubectl apply -f ./tekton-admin.yaml