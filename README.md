DevOps Assignment - Complete Setup

End-to-end DevOps pipeline on Azure with AKS, Terraform, Helm, and CI/CD.


### 1. GitHub Secrets
Add these to repository secrets:
- `AZURE_CLIENT_ID`, `AZURE_CLIENT_SECRET`, `AZURE_TENANT_ID`, `AZURE_SUBSCRIPTION_ID`
- `ACR_PASSWORD`
### 2. Run Infrastructure
- Go to GitHub Actions → "Terraform Apply" → Run workflow
- Creates: AKS cluster, ACR, Storage Account

### 3. Deploy Application
- Push to main branch triggers CI/CD
- Automatically: builds Docker, pushes to ACR, deploys with Helm

##  Verification

```bash
# Get application URL
kubectl get service hello-world-service

# Test endpoints
curl http://74.178.172.18:5000/
curl http://74.178.172.18:5000/healthz

# Check auto-scaling
kubectl get hpa

#  Load testing

# Generate load to trigger auto-scaling
ab -n 5000 -c 10 http://74.178.172.18:5000/

# Monitor scaling in real-time
kubectl get hpa -w
kubectl get pods -w

```
### Technologies

- Infra: Terraform, Azure (AKS, ACR)

- App: Python Flask, Docker

- K8s: Helm, HPA, Secrets

- CI/CD: GitHub Actions
