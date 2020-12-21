resource "aws_iam_instance_profile" "quick-server_s3_access" {
  name = "quick-server_s3_access"
  role = aws_iam_role.role.name
}

resource "aws_iam_role" "role" {
  name = "quick-server_s3_access"

  tags = {
    Name = "quick-server_s3_access"
  }

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Principal": {"Service": "ec2.amazonaws.com"},
    "Action": "sts:AssumeRole"
  }
}
EOF
}

resource "aws_iam_policy" "ec2_policy" {
  name        = "ec2_to_s3_policy"
  description = "quick-server_s3_access"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "s3:*",
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "attach_ec2_policy" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.ec2_policy.arn
}
