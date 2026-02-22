module "terrafrom_ASG" {
  source  = "git::https://github.com/sherif-nassif/terraform_modules.git//autoscaling-module"
  port    = "80"
  image = "ami-00381a880aa48c6c6" #Ubuntu Server 22.04 LT x86 64 bits
  flavor = "t3.micro"
  vpc_name = "sherif-vpc"
  vpc_cidr_block = "16.100.0.0/16"
  az_1  = "eu-north-1a"
  az_2  = "eu-north-1b"
  subnet1_cidr = "16.100.1.0/24"
  subnet2_cidr = "16.100.2.0/24"
  subnet1_name = "Public Subnet 1"
  subnet2_name = "Public Subnet 2"
  route        = "0.0.0.0/0"
}



