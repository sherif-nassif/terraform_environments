#provider "aws" {
#  region                  = "eu-north-1"
#}

terraform {
backend "s3" {
    bucket         	   = "terraform-state-sherif-s3"
    key                = "state/terraform.tfstate"
    region         	   = "eu-north-1"
    encrypt        	   = true
    use_lockfile       = true
  }
}


locals  {
  editor_predefined_roles = [
    # Default from IT
    "artifactregistry.admin",
    "cloudsupport.techSupportEditor",
    "compute.instanceAdmin.v1",
    "compute.osAdminLogin",
    "container.admin",
    "iam.serviceAccountAdmin",
    "monitoring.editor",
    "viewer",
    # Extra
    "artifactregistry.createOnPushRepoAdmin"
  ]
}


