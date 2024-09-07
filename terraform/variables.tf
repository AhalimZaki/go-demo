variable "region" {
    description = "The AWS region to deploy to"
    type        = string
    default     = "ap-northeast-1" #Tokyo
}

variable "env" {
    description = "The environment to deploy to"
    type        = string
    default     = "dev"
  
}