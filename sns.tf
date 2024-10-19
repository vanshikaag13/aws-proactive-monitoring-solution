resource "aws_sns_topic" "sns_topic" {
  name = "cloudwatch-alerts-topic"
}

resource "aws_sns_topic_subscription" "sns_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "https"
  endpoint  = "http://<JENKINS_SERVER_IP>:8080/sns-webhook/"
}