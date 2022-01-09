resource "aws_iam_role" "ec2_cw_access_role" {
  name               = var.role_name
  assume_role_policy = "${file("./iam/assumerolepolicy.json")}"
}

resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  description = "Access CW"
  policy      = "${file("./iam/policycw.json")}"
}

resource "aws_iam_policy_attachment" "policy_to_role" {
  name       = "Cloudwatch access"
  roles      = [aws_iam_role.ec2_cw_access_role.name] 
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_instance_profile" "iam_profile" {
  name = "iam_instance_profile"
  role = aws_iam_role.ec2_cw_access_role.name 
}
