resource "aws_instance" "terrafrom_provisioned_EC2" {
  ami           = "ami-00381a880aa48c6c6" #Ubuntu Server 22.04 LT x86 64 bits
  instance_type = "t3.micro"
  key_name        = aws_key_pair.deployer.key_name
  tags = {
    Name = "terrafrom_provisioned_EC2"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform_key_aws"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdMpuqqb4ncWZH0PevWFAzMp2+EwSOKPEk/0mir6OjvmvwhUJYFj/B6kJhp00kylXDfn/F2sUrVwI2tN1VNvN/ztMewauQzn+sFHeDjwAAktu7/rzxd7/36iHh1HTLdqUCs/h5DdbLtKlpQTNRhS04Bq639Gui4g+A87KM+bEVHQV/kUcpRSdTdnxfA2Lh8OF9dAD2FtlyCAE0Z1YUTvlfOWRdMpdoIFXiZ1uirb4XM0iQ4Ikpmb5Pk8n0dEnyR9FdOSCi5iH5S/hovKsbTy9sA0zQ/s1k+uiuYc6K4dohRo1cWOKarfi9MsFIcQtdGwQeVpuKo4j2mzeV5y8AmWNL enesshe@optimus"
}