module "dev_tools_jenkins_release" {
  source = "../modules/tools/jenkins_release"

  cluster_ingress_hostname                      = "${module.dev_cluster.ingress_hostname}"
  cluster_config_file                           = "${module.dev_cluster.config_file_path}"
  cluster_type                                  = "${var.cluster_type}"
  releases_namespace                            = "${module.dev_cluster_namespaces.tools_namespace_name}"
}
