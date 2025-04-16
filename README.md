# Terraform Azure Data Factory and Storage Account Project

This project provisions an Azure Data Factory and associated resources, including a storage account with source and destination containers, using Terraform.

## Project Structure

The project is organized as follows:

```
adf-terraform-demo/
├── main.tf                  # Main Terraform configuration
├── variables.tf             # Input variables definition
├── modules/
│   ├── data_factory/
│   │   └── data_factory/
│   │       ├── data_factory.tf   # Data Factory resources
│   │       ├── variables.tf      # Module variables
│   └── storage_account/
│       └── storage_account/
│           ├── storage_account.tf # Storage Account resources
│           ├── variables.tf       # Module variables
├── .gitignore               # Git ignore rules
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) version `>= 1.0.0`
- Azure CLI authenticated to your Azure subscription
- An existing Azure subscription

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/MaksymKashuba/adf-terraform-demo.git
   cd adf-terraform-demo
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Create and customize the `variables.tfvars` file to match your requirements:
   ```hcl
   resource_group_name = ""
   storage_account_name = ""
   location = ""

   tags = {
       environment = ""
   }

   source_folder_name = ""
   destination_folder_name = ""

   df_name = ""
   ```

4. Validate the configuration:
   ```bash
   terraform validate
   ```

5. Plan the deployment:
   ```bash
   terraform plan -var-file="variables.tfvars"
   ```

6. Apply the configuration:
   ```bash
   terraform apply -var-file="variables.tfvars"
   ```

7. To destroy the resources:
   ```bash
   terraform destroy -var-file="variables.tfvars"
   ```

## Resources Created

- **Resource Group**: A resource group to contain all resources.
- **Storage Account**: A storage account with source and destination containers.
- **Data Factory**: An Azure Data Factory instance.
- **Pipelines and Datasets**: Configured for copying data between source and destination.

## Notes

- Sensitive information such as access keys is managed securely using Terraform's state file. Avoid sharing the `.tfstate` files.
- The `.gitignore` file ensures sensitive files like `.tfstate` and `.tfvars` are not committed to version control.