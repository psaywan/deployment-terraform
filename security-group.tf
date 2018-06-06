#####
resource "aws_security_group" "SSH" {
  name = "${var.tag_name} SSH"
  description = "SSH Only"
  vpc_id = "${aws_vpc.main.id}"

  tags {
  Name = "SSH"
  owner = "${var.tag_owner}"
  project = "${var.tag_project}"
  }
}

resource "aws_security_group_rule" "SSH" {
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.SSH.id}"
}

resource "aws_security_group_rule" "SSH-1" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["${var.remote_ips}"]
  security_group_id = "${aws_security_group.SSH.id}"
}

resource "aws_security_group_rule" "SSH-2" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = "${aws_security_group.MGMT.id}"
  security_group_id = "${aws_security_group.SSH.id}"
}

####
