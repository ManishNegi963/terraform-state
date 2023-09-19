provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "my_instance" {
        instance_type = "t2.micro"
        ami = "ami-053b0d53c279acc90"
        tags = {
                Name = "remote-test-instance"
        }


}

resource "aws_s3_bucket" "my_bucket" {
        bucket = "remote-state-buckets3"
}

resource "aws_dynamodb_table" "my_table" {
        name  = "my-remote-state-table"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockID"
        attribute {
                name = "LockID"
                type = "S"
        }

}
