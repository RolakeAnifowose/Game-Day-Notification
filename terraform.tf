terraform {
    backend "s3" {
      bucket = "game-day-notification-morolake"
      key = "game-day-notification-morolake/terraform.tfstate"
      region = "us-east-1"
    }
}