terraform {
    backend "s3" {
      bucket = "game-day-notification-morolake"
      key = "game-day-notification-morolake/terraform.tfstate"
      region = "us-east-1"
      depends_on = [aws_s3_bucket.game-day-notification-morolake]
      #dynamodb_table = "terraform-state-table"
    }
}

resource "aws_s3_bucket" "game-day-notification-morolake" {
    name = "game-day-notification-morolake"
}

# resource "aws_dynamodb_table" "terraform-state-table" {
#     name = "terraform-state-table"
#     billing_mode = "PROVISIONED"
#     write_capacity = 10
#     read_capacity = 10
# }