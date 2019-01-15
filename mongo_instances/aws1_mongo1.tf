# EC2 Instance: MongoDB 1
resource "aws_instance" "mongodb_one" {
    availability_zone = "${var.AWS_REGION}a"

    tags {
        Name = "${var.ENVIRONMENT}-mongodb-one"
    }

    ami = "<your-ami-id>"

    instance_type = "t2.large"

    root_block_device {
        volume_type = "gp2"
        volume_size = "100"
    }

    security_groups = [
        "${aws_security_group.mongodb.name}"
    ]

    associate_public_ip_address = true

    key_name = "id_rsa"
}