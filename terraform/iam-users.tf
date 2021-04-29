############################
# Architects
############################

module "iam_architect_user1" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_architect"
  force_destroy                 = true
  create_iam_user_login_profile = false
}

############################
# Devops
############################

module "iam_devops_user1" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_devops1"
  force_destroy                 = true
  create_iam_user_login_profile = false
}

module "iam_devops_user2" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_devops2"
  force_destroy                 = true
  create_iam_user_login_profile = false
}


############################
# Devlopers
############################

module "iam_dev_user1" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_dev1"
  force_destroy                 = true
  create_iam_user_login_profile = false
}

module "iam_dev_user2" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_dev2"
  force_destroy                 = true
  create_iam_user_login_profile = false
}


############################
# Testers
############################

module "iam_tester_user1" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_test1"
  force_destroy                 = true
  create_iam_user_login_profile = false
}

module "iam_tester_user2" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "~> 3.0"
  name                          = "rk_test2"
  force_destroy                 = true
  create_iam_user_login_profile = false
}
