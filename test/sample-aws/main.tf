terraform {
  backend "s3" {
    bucket         = "pvivekvarma-diffi"
    key            = "sample-aws/tfstate.json"
    region         = "ap-south-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Create the SQS queue
resource "aws_sqs_queue" "test_queue" {
  name = "test-queue"
}

## Create the SNS topic
resource "aws_sns_topic" "test_topic" {
  name = "test-topic"
}

## Link the SQS queue to the SNS topic
resource "aws_sns_topic_subscription" "sqs_subscription" {
  topic_arn = aws_sns_topic.test_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.test_queue.arn
}
