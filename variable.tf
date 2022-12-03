variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "Main_Routing_Table" {}
variable "Private_Routing_Table" {}

variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type        = list(any)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public-cidrs" {
  description = "CIDRs for Subnets"
  type        = list(any)
  default     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]
}

variable "private-cidrs" {
  description = "CIDRs for Subnets"
  type        = list(any)
  default     = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24", "10.1.40.0/24", "10.1.50.0/24", "10.1.60.0/24"]
}


