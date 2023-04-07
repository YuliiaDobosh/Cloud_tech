module "authors_table" {
  source = "./modules/dynamodb"

  table_name = "Authors"
  context    = module.random.context
}

module "courses_table" {
  source = "./modules/dynamodb"

  table_name = "Courses"
  context    = module.random.context
}

module "lambda" {
  source = "./modules/lambda"

  function_name = module.random.id
  handler       = "index.handler"
  lambda_zip    = "../lambda.zip"
  context       = module.random.context
  runtime       = "nodejs18.x"
}