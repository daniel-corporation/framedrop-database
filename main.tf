

module "dynamodb" {
  source = "./dynamodb"
  
  table_name    = "Video"
  billing_mode  = "PAY_PER_REQUEST"
   tags = {
    Environment = "prod"
    Project     = "framdrop"
  }
}