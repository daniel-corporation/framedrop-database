output "table_name" {
  description = "Nome da tabela DynamoDB"
  value       = aws_dynamodb_table.video.name
}

output "table_arn" {
  description = "ARN da tabela DynamoDB"
  value       = aws_dynamodb_table.video.arn
}

output "stream_arn" {
  description = "ARN do DynamoDB Stream"
  value       = aws_dynamodb_table.video.stream_arn
}