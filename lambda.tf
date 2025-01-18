resource "aws_lambda_function" "game-day-lambda" {
    function_name = "game-day-lambda"
    runtime = "python3.13"
    role = aws_iam_role.game-day-lambda-role.arn
    filename = "notifications.zip"
    handler = "notifications.lambda_handler"

    environment {
        variables = {
            NBA_API_KEY = "7a56c2fc2b78462e840b340a20869600"
            SNS_TOPIC_ARN = "arn:aws:sns:us-east-1:556298987240:game-day-notification"
        }
    }
}