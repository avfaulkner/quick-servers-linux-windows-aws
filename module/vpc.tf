# VPC
resource "aws_vpc" "quick-server" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "{var.owner}-quick-server"
  }
}

resource "aws_route_table" "quick-server-rt" {
  vpc_id = aws_vpc.quick-server.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "{var.owner}-rt-public"
  }
}

resource "aws_route_table_association" "rt-assoc" {
  route_table_id = aws_route_table.quick-server-rt.id
//  gateway_id = aws_internet_gateway.igw.id
  subnet_id = aws_subnet.subnet-public.id
}

resource "aws_route_table" "quick-server-rt-private" {
  vpc_id = aws_vpc.quick-server.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "{var.owner}-rt-private"
  }
}


resource "aws_subnet" "subnet-public" {
  cidr_block = "10.0.10.0/24"
  vpc_id     = aws_vpc.quick-server.id
  map_public_ip_on_launch = true
  depends_on = [aws_internet_gateway.igw]
  availability_zone = "${var.region}a"

  tags = {
    Name = "{var.owner}-subnet-public"
  }
}

resource "aws_subnet" "subnet-private" {
  cidr_block = "10.0.11.0/24"
  vpc_id     = aws_vpc.quick-server.id

  tags = {
    Name = "{var.owner}-subnet-private"
  }
}

#public
# public eip is in server.tf
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.quick-server.id

  tags = {
    Name = "{var.owner}-quick-server-igw"
  }
}

#nat
resource "aws_eip" "eip-nat" {
  vpc = true

  tags = {
    Name = "{var.owner}-quick-server-eip-nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip-nat.id
  subnet_id     = aws_subnet.subnet-private.id

  tags = {
    Name = "{var.owner}-quick-server-nat-gw"
  }
}