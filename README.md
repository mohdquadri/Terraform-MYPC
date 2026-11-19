# Terraform Azure Reusable Modules

This project creates:
- Resource Group
- Virtual Network + Subnet
- Network Security Group (and subnet association)
- Linux Virtual Machine

It uses reusable modules and separate environment roots for `dev` and `prod`.

## Structure

```text
Terraform-MYPC/
  modules/
    vnet/
    nsg/
    vm/
  environments/
    dev/
    prod/
```

## Usage

1. Go to an environment folder:
   - `environments/dev`
   - `environments/prod`
2. Copy `terraform.tfvars.example` to `terraform.tfvars`.
3. Sign in to Azure once with `az login` and make sure the correct subscription is selected.
4. Update values in `terraform.tfvars` as needed (at minimum: `admin_password`).
5. Run:
   - `terraform init`
   - `terraform plan`
   - `terraform apply`
