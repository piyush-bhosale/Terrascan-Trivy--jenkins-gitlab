variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0e86e20dae9224db8" # Replace with a valid AMI ID for your region
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro" # Change to your desired instance type
}

variable "availability_zone" {
  description = "The type of instance to create"
  type        = string
  default     = "us-east-1a" # Change to your desired instance type
}

