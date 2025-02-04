module "allow_all_sg" {
 source = "../terraform-aws-securitygroupmodule"
 sg_name = "allow-all"
 sg_description = "allowing all ports from internet"
 sg_ingress_rules = var.sg_ingress_rules
 project_name = var.project_name
 vpc_id = local.vpc_id
 common_tags = var.common_tags
 sg_tags = var.sg_tags
 
}