variable "github_token" {
  description = "The GitHub Token to be used for the CodePipeline"
  type        = string
}

# AWS accound id required for later to create a url 
variable "account_id" {
  description = "id of the active account"
  type        = string
}

variable "region" {
  description = "region to deploy to"
  type        = string
  default     = "eu-north-1"
}

provider "aws" {
  region = "eu-north-1"
}

