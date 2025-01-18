resource "aws_iam_policy" "game-day-iam-policy" {
    name = "game-day-iam-policy"
    path = "/"
    description = "Give permission to publish to SNS topic"

    policy = jsonencode ({
        Version: "2012-10-17",
        Statement: [
            {
                "Effect": "Allow",
                "Action": "sns:Publish",
                "Resource": "arn:aws:sns:us-east-1:556298987240:game-day-notification"
            }
        ]
    })
}

resource "aws_iam_role" "game-day-lambda-role" {
    name = "game-day-lambda-role"
    managed_policy_arns = [aws_iam_policy.game-day-iam-policy.arn, "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]

    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}