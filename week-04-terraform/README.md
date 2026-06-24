# 🏗️ Week 04 — Terraform

![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)
![Tool](https://img.shields.io/badge/Tool-Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)

---

## 🎯 What I Learned This Week

Infrastructure as Code (IaC) using Terraform — automating Docker container provisioning with variables, outputs, and environment-specific configurations.

---

## ✅ Progress

- [x] Terraform installed and configured
- [x] `main.tf` — provisioned Nginx Docker container
- [x] `variables.tf` — configurable port, image, container name
- [x] `outputs.tf` — auto-prints container info after apply
- [x] `terraform.tfvars` — environment-specific values
- [x] `terraform destroy` — infrastructure cleanup
- [x] Full IaC workflow: init → plan → apply → destroy

---

## 📁 Files

| File | Description |
|------|-------------|
| `main.tf` | Main Terraform configuration — defines infrastructure |
| `variables.tf` | Input variables — port, image name, container name |
| `outputs.tf` | Output values — prints container info after apply |
| `terraform.tfvars` | Variable values for development environment |

---

## 🏗️ Architecture

```
terraform apply
      ↓
Terraform reads main.tf
      ↓
Downloads Docker provider
      ↓
Pulls nginx:latest image
      ↓
Creates Docker container
      ↓
Prints outputs ✅

http://localhost:8080 → Nginx Running!
```

---

## 🚀 How to Run

```bash
# Initialize Terraform
terraform init

# See what will be created
terraform plan

# Create infrastructure
terraform apply

# Destroy infrastructure
terraform destroy
```

---

## 📸 Outputs After Apply

```
Outputs:

access_url     = "http://localhost:8080"
container_name = "terraform-nginx-dev"
container_port = 8080
```

---

## 💡 Key Learnings

- Terraform automates infrastructure creation with code
- `terraform plan` shows what will happen before applying
- Variables make configuration reusable and flexible
- `terraform.tfvars` allows different values per environment
- `terraform destroy` cleans up all created resources
- IaC ensures infrastructure is consistent and reproducible

---

## 🔜 Coming Next — Week 05

Kubernetes — Pods, Deployments, and Services using Minikube

---

*Part of [aws-cloud-journey](../README.md) — Week 04 of 06*
