terraform {
  required_version = ">=1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    github = {
      source  = "integrations/github"
      version = "~> 6.2.1"
    }
  }
}