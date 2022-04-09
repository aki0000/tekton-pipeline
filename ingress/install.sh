#!/bin/sh
# Deploy ingress for tekton pipeline
kubectl apply -f ingress.yaml

# Apply hostname into your /etc/hosts
if grep -q "tekton.dashboard.local" /etc/hosts;
then
    cat << EOF >> /etc/hosts
    # tekton dashboard host
    127.0.0.1 tekton.dashboard.local
EOF;
fi