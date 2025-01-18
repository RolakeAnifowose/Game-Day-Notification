resource "aws_lambda_function" "game-day-lambda" {
    function_name = "game-day-lambda"
    runtime = "python3.13"
    role = aws_iam_role.game-day-lambda-role-new.arn
    filename = "notifications.zip"
    handler = "notifications.lambda_handler"

    environment {
        variables = {
            NBA_API_KEY = "api_key"
            SNS_TOPIC_ARN = "arn:aws:sns:us-east-1:<account-id>:game-day-notification"
        }
    }
}