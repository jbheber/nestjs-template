docker build -t jbheber/nestjs-template .
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/postgres-persistent-volume.yaml
kubectl apply -f k8s/postgres-volume-claim.yaml
kubectl apply -f k8s/postgres-secret.yaml
kubectl apply -f k8s/postgres-configmap.yaml
kubectl apply -f k8s/postgres-deployment.yaml
kubectl apply -f k8s/postgres-service.yaml
kubectl apply -f k8s/pgadmin-secret.yaml
kubectl apply -f k8s/pgadmin-deployment.yaml
kubectl apply -f k8s/node-deployment-local.yaml
kubectl apply -f k8s/node-service.yaml
kubectl apply -f k8s/node-ingress.yaml


kubectl get all --namespace=nestjs-template

echo "\n=================\n"
kubectl port-forward --namespace=nestjs-template svc/nestjs-template-service 8000:8000

kubectl get ingress --namespace=nestjs-template --watch

