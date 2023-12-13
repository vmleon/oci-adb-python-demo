# OCI Autonomous DB with Python

## Run the content

From the Oracle Cloud Console, click on Cloud Shell.

### Clone

```bash
git clone https://github.com/vmleon/oci-adb-python-demo.git
```

```bash
cd oci-adb-python-demo
```

### Install dependencies

```bash
cd scripts && npm install && cd ..
```

### Set up environment

```bash
npx zx scripts/setenv.mjs
```

During the execution of the script, it will ask for the compartment. You just type ENTER to select the root compartment. If you are familiar with OCI compartments, then feel free to pick an existing compartment name.

### Configure Terraform

```bash
npx zx scripts/tfvars.mjs
```

### Deploy infrastructure

```bash
cd terraform
```

```bash
terraform init
```

```bash
terraform apply -auto-approve
```

```bash
terraform output
```

```bash
cd ..
```

## Clean Up

```bash
cd terraform
```

```bash
terraform destroy -auto-approve
```

```bash
cd ..
```

```bash
rm .env.json
```
