# Secure Azure Storage Account Deployment with Terraform

**Type:** Lab Project — Terraform + Azure Hands-On  
**Skills:** Infrastructure as Code (IaC), Azure Storage, Terraform, Security Hardening  

---

## Overview
As part of my learning in cloud infrastructure and DevOps, I developed a Terraform configuration to provision and secure an **Azure StorageV2** account.  
This project focused on applying best practices for availability, security, and lifecycle management using code-driven deployments.

---

## Objectives
- Use Terraform to provision a StorageV2 account in Azure.
- Configure **Zone-Redundant Storage (ZRS)** for high availability.
- Enforce secure access via HTTPS only.
- Enable blob versioning, change feed, and data retention.
- Apply resource tagging for tracking and automation.

---

## What I Did

### 1. Configured Terraform Environment
- Used Terraform **v1.6+** with the **azurerm v3.50+** provider.
- Authenticated to Azure using Azure CLI.
- Organized project files (`main.tf`, `keyvault.tf`) for modular configuration.

### 2. Provisioned Azure Storage Account
- Created a **StorageV2** account in the `Terraform_Projects` resource group.
- Set **ZRS replication** for improved resilience.
- Applied **HTTPS-only** traffic rules and enabled **infrastructure encryption**.

### 3. Implemented Blob Storage Features
- Enabled **blob versioning** for data protection.
- Turned on **change feed** for activity logging.
- Configured a **7-day delete retention policy** for recovery.

### 4. Applied Governance & Tagging
- Tagged the resource with an environment label (`staging`) for tracking.
- Structured naming conventions for consistency across deployments.

---

## Key Takeaways
- **Terraform** provides repeatable, version-controlled infrastructure deployments.
- Enforcing **HTTPS-only** access and encryption at creation time ensures compliance from day one.
- Features like **versioning** and **change feed** provide built-in protection and auditing capabilities.
- Tagging early improves management, automation, and cost tracking.

---

## Screenshots
*(Taken from the live Azure deployment)*

- **Terraform Code & Successful Apply Output**  
  ![Terraform Code and Apply Output](./Screenshot-Terraform-Apply.png)

- **Azure Portal — Storage Account Overview**  
  ![Storage Account Overview](./Screenshot-Storage-Account.png)

---

## Next Steps
- Automate deployment via CI/CD pipelines (e.g., GitHub Actions).
- Integrate **Azure Key Vault** for secure management of access keys.
- Expand Terraform scripts to deploy additional Azure security services.

---

## Infrastructure as Code
- [main.tf](./terraform/main.tf) — Core Terraform configuration for Azure Storage Account
- [keyvault.tf](./terraform/keyvault.tf) — Optional Key Vault integration

---
