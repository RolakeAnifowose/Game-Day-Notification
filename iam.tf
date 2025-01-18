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