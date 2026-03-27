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
3. Update values (at minimum: `subscription_id`, `admin_password`).
4. Run:
   - `terraform init`
   - `terraform plan`
   - `terraform apply`

