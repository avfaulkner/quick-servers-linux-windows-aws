# server security group
resource "aws_security_group" "quick-server-sg" {
  name        = "quick-server-sg"
  description = "quick-server-sg"
  vpc_id      = aws_vpc.quick-server.id

  tags = {
    Name = "quick-server-sg"
  }
}

# inbound ssh access
resource "aws_security_group_rule" "ssh-in" {
  type        = "ingress"
  description = "ssh access"
  from_port   = var.ssh_port
  to_port     = var.ssh_port
  protocol    = "tcp"
  cidr_blocks = var.ssh_cidr_blocks

  security_group_id = aws_security_group.quick-server-sg.id
}

# https inbound
resource "aws_security_group_rule" "quick-server-in" {
  type        = "ingress"
  description = "https access"
  from_port   = var.https_port
  to_port     = var.https_port
  protocol    = "tcp"
  cidr_blocks = var.https_inbound_cidr_block

  security_group_id = aws_security_group.quick-server-sg.id
}

# https outbound
resource "aws_security_group_rule" "https-out" {
  type        = "egress"
  description = "https access"
  from_port   = var.https_port
  to_port     = var.https_port
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.quick-server-sg.id
}

# http outbound
resource "aws_security_group_rule" "http-out" {
  type        = "egress"
  description = "http access"
  from_port   = var.http_port
  to_port     = var.http_port
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.quick-server-sg.id
}