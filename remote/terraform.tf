terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "~>5.0"

}
}

backend "s3" {
        bucket = "remote-state-buckets3"
        dynamodb_table = "my-remote-state-table"
        key = "terraform.tfstate"
        region = "us-east-1"


        }


}
