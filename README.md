# deployment-terraform
AWS instance setup using terraform


Summary command will be

$ terraform init # only needed once while/if getting error on first plan.

$ terraform plan 

$ terraform apply

var.aws_profile AWS CLI profile name

Enter a value: default

var.aws_region EC2 Region for the VPC

Enter a value: ap-south-1

var.remote_ips Your IP address used to limit SSH access to the jumphost. (ex ["10.1.2.3/32"])

Enter a value: ["1.2.3.4/32"]

var.ssh_key_file The full pathname of the file which holds the SSH private key. (ex ~/.ssh/id_rsa)

Enter a value: ~/.ssh/id_demo

var.tag_name Your cluster name which will be added to object tags.

Enter a value: PUNE-DEMO

var.tag_owner Your email address which will be added to object tags.

Enter a value: psaywankar123@gmail.com

...

terraform destroy - after the demo or provision infra is not in use run this command to destroy the instances and other resources.
