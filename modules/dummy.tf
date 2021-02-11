module "consul_iam_policies_servers" {
  source      = "git::https://github.com/hashicorp/terraform-aws-consul.git//modules/consul-iam-policies?ref=v0.8.4"
  iam_role_id = module.nomad_servers.iam_role_id
}

module "data_center" {
  source = "git::https://github.com/hashicorp/terraform-aws-nomad.git//modules/nomad-cluster?ref=v0.7.2"

  cluster_name                = local.cluster_name
  cluster_tag_value           = local.cluster_name
}
