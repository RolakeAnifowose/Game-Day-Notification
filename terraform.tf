# terraform {
#     backend "s3" {
#       bucket = "game-day-notification-morolake"
#       key = "game-day-notification-morolake/terraform.tfstate"
#       region = "us-east-1"
#       #dynamodb_table = "terraform-state-table"
#     }
# }

# resource "aws_dynamodb_table" "terraform-state-table" {
#     name = "terraform-state-table"
#     billing_mode = "PROVISIONED"
#     write_capacity = 10
#     read_capacity = 10
# }