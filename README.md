# terraform-homework

#Homework4
#example how to use tfvars file:
# create four tfvars files for each region

#file example oregon.tfvars file:
#region = "us-west-2"
#ami = "ami-07c5ecd8498c59db5"
#availability_zone = "us-west-2a"

#create the same for rest regions



# run following commands:
# terrform init
# terraform apply -var-file oregon.tfvars
# terraform destroy -var-file oregon.tfvars
# repeat the same for all regions
