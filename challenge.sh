## Install grafana prometheus with helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack

## Install Loki as a Logging Solution
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install loki grafana/loki-simple-scalable

## Target-Tracking CPU Autoscaler
kubectl autoscale deployment kuard-deployment --min=3 --max=7 --cpu-percent=80
kubectl get hpa

## Fehler templating
brew install kubeval
kubeval Deployment.yaml

## Rollback
kubectl set image deployment/kuard-deployment kuard-container=gcr.io/kuar-demo/kuard-amd64:green --record
kubectl rollout undo deployment/kuard-deployment

