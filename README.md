# Terraform Application – Jorge Oliveira

This repository fulfills the job application requirement by defining Terraform outputs for:

- My full name
- The exact position I am applying for

All personal/application data is supplied via **variables** (no hardcoding in code), with input validation for consistency.

## Repository Contents
├── README.md                  # ← You are here
├── variables.tf               # Variable declarations + validation rules
├── locals.tf                  # Centralized, computed metadata
├── outputs.tf                 # Clean, self-documenting outputs
├── terraform.tfvars           # Template showing how to provide values
└── .gitignore

## How to View the Outputs

You can quickly see the values without running `terraform apply`:

```bash
# 1. Initialize (only needed once)
terraform init

# 2. View individual outputs
terraform output applicant_name
terraform output position_applying_for

# 3. View the full structured metadata (most interesting one)
terraform output -json application_metadata | jq .    # pretty-printed JSON
# or just:
terraform output application_metadata