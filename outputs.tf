/* output "vpc_id" {
    value = module.vpc.vpc_id
  
}*/

output "public_subnet_ids" {
    value = local.public_subnet_ids
  
}

output "private_subnet_ids" {
    value = local.private_subnet_ids
  
}

output "database_subnet_ids" {
    value = local.database_subnet_ids
  
}

output "aws_ami" {
    value = data.aws_ami.devops-ami.id
  
}