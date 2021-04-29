module "pipeline" {
  source = "./modules/pipeline"

  cluster_name        = var.cluster_name
  container_name      = var.container_name
  app_repository_name = var.app_repository_name
  git_repository      = var.git_repository
  repository_url      = module.ecs.repository_url
  app_service_name    = module.ecs.service_name
  vpc_id              = var.vpc_id

  build_options = var.build_options
  build_args    = var.build_args

  subnet_ids = var.subnet_ids
}
