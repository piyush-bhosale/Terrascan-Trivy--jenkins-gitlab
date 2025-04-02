# Terrascan + Trivy Security Scanning with Jenkins & GitLab CI/CD

## 🔐 Project Overview

This repository demonstrates a complete **DevSecOps pipeline** using two powerful security scanning tools:

- **Terrascan** for scanning **Terraform IaC code**
- **Trivy** for scanning **Docker images** for vulnerabilities

The scans are integrated into **GitLab CI/CD** and **Jenkins pipelines**, simulating a real-world secure software delivery lifecycle.

---

## ⚙️ Tools Used

- **Terraform** – Infrastructure as Code
- **Terrascan** – Static code analysis for Terraform
- **Trivy** – Vulnerability scanner for container images
- **GitLab CI/CD** – Pipeline for scanning IaC code
- **Jenkins** – Pipeline for scanning Docker images
- **Docker** – Container platform

---

## 🧩 Repository Structure

| File | Description |
|------|-------------|
| `.gitlab-ci.yml-scanning-iac` | GitLab CI pipeline to scan Terraform files with Terrascan |
| `Jenkinsfile-trivy` | Jenkins pipeline to scan Docker images using Trivy |
| `main.tf`, `provider.tf`, `variable.tf` | Sample Terraform IaC files for scanning |
| `terraform.tfstate` | Terraform state file (mock/demo) |
| `README.md` | Project documentation (this file) |

---

## 🔍 What This Project Demonstrates

### **1. Infrastructure as Code Security (Terrascan)**  
Using GitLab CI/CD, we scan `.tf` files in the repo for misconfigurations or violations against best practices and compliance policies.  
The pipeline fails if any critical violations are found, enforcing secure-by-default IaC delivery.

### **2. Container Image Vulnerability Scanning (Trivy)**  
Through a Jenkins pipeline, we scan Docker images to identify vulnerabilities (CVEs), misconfigurations, and known exploits.  
This ensures secure deployment-ready containers before pushing to a registry.

---

## 🧪 How It Works

### **Terrascan with GitLab CI**
- Automatically installs Terrascan in a GitLab runner
- Scans all Terraform files
- Fails the pipeline on policy violations
- Generates a `terrascan-report.json` artifact

### **Trivy with Jenkins**
- Jenkins pipeline builds a Docker image
- Trivy scans the image for OS and application layer vulnerabilities
- Results are printed in the Jenkins console log
- Pipeline can be enhanced to fail on HIGH/CRITICAL issues

---

## 🚀 How to Use

### **1. Clone the Repo**

```bash
git clone https://github.com/piyush-bhosale/Terrascan-Trivy--jenkins-gitlab.git
cd Terrascan-Trivy--jenkins-gitlab
