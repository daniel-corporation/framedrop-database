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



  global_secondary_index {
    name               = "videoId-userid-index"
    hash_key           = "userId"
    projection_type    = "ALL"                     
  }

  tags = var.tags
}