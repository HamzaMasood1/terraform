### Provider file to connect AWS ###

provider "aws" {
  region     = var.region
  version    = ">= 2.52.0"
  access_key = var.access_key
  secret_key = var.secret_key
}

