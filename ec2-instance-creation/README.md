# Creating an instance

1. Initialize terraform.

Must be done in the folder containing `main.tf` / or basically a terafform file

```bash
terraform init
```

2. Check the plan to ensure all configurations are correct before applying them

```bash
terraform plan
```

3. Apply the configuration to create the resources

```bash
terraform apply
```

# Destroying an instance

To drop created instance run

```bash
terraform destroy
```
