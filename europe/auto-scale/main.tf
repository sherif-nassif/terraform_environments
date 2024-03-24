module "terrafrom_ASG" {
  source  = "git::ssh://git@ssh.dev.azure.com/v3/ericsson/Sapper/Terraform_Modules_AWS//autoscaling-module"
  port    = "80"
  image = "ami-00381a880aa48c6c6" #Ubuntu Server 22.04 LT x86 64 bits
  flavor = "t3.micro"
}



