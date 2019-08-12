module "dev_cluster_namespaces" {
  source = "../modules/cluster/namespaces"

  cluster_name             = "${module.dev_cluster.name}"
  cluster_type             = "${module.dev_cluster.type}"
  cluster_config_file_path = "${module.dev_cluster.config_file_path}"
  tools_namespace          = "${var.tools_namespace}"
  dev_namespace            = "${var.dev_namespace}"
  test_namespace           = "${var.test_namespace}"
  staging_namespace        = "${var.staging_namespace}"
}
