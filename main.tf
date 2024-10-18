# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16" # Change to your desired CIDR block

  tags = {
    Name = "MyVPC"
  }
}

# Create a subnet in the VPC
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24"         # Change to your desired subnet CIDR block
  availability_zone = var.availability_zone # Change to your desired availability zone

  tags = {
    Name = "MySubnet"
  }
}

# Create an EC2 instance in the subnet
resource "aws_instance" "my_ec2" {
  ami           = var.ami                 # Replace with a valid AMI ID for your region
  instance_type = var.instance_type       # Change to your desired instance type
  subnet_id     = aws_subnet.my_subnet.id # Reference the subnet

  tags = {
    Name = "MyECconsole"
  }
}

