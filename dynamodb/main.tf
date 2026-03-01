resource "aws_dynamodb_table" "video" {
  name         = var.table_name
  billing_mode = var.billing_mode
  hash_key     = "videoId"

  attribute {
    name = "videoId"
    type = "S"
  }

  attribute {
    name = "userId"
    type = "S"
  }

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  global_secondary_index {
    name               = "videoId-userid-index"
    hash_key           = "userId"
    projection_type    = "ALL"                     
  }

  tags = var.tags
}