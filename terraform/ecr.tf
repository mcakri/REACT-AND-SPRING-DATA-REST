  module "ecr" {
    source      = "git::https://github.com/clouddrove/terraform-aws-ecr.git?ref=tags/0.12.2"
    name        = "rk-ecr"
    environment = "test"
    label_order = ["environment", "name"]
}
