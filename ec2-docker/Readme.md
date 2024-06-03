# Using this template

* Ensure Terraform is installed
* Ensure AWS CLI is installed and configure
* Ensure you have key pair generated using `ssh-keygen` command in your system
* Clone this repo and cd into `ec2-docker`
```
cd ec2-docker
terraform init
terraform apply -var "region=ap-south-2" -var "instance_type=t3.micro" -auto-approve
```
* Now wait till the execution is completed and look into outputs. Wait fr 2-3 minutes
* Now ssh into instance and start using docker

* Once your are done practicing destroy the instance
```
terraform destroy
```

*Enjoy your journey of learning docker*