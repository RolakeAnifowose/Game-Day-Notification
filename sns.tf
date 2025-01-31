resource "aws_sns_topic" "game-day-notification" {
    name = "game-day-notification"
}

resource "aws_sns_topic_subscription" "game-day-subscription" {
    topic_arn = "arn:aws:sns:us-east-1:<account-id>:game-day-notification"
    protocol = "email"
    endpoint = "morolaanney@gmail.com"
    depends_on = [aws_sns_topic.game-day-notification]
}