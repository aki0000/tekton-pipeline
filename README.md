# tekton-pipeline

Deploy tekton pipeline/dashbord into your cluster.

```
# Deploy
kubectl apply -f ./

# Port forward dashboard port 
kubectl --namespace tekton-pipelines port-forward svc/tekton-dashboard 9097:9097

```