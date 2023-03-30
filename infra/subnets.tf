module "subnets" {
  source      = "./subnet"
  prefix = local.prefix
  vpc_id      = local.vpc_id

  count  = length(local.public_subnet)
  subnet = local.public_subnet[count.index]
}

module "private_subnets" {
  source      = "./subnet"
  prefix = local.prefix
  vpc_id      = local.vpc_id

  count  = length(local.private_subnet)
  subnet = local.private_subnet[count.index]
}
