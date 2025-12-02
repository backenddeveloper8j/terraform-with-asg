output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "load_balancer_dns" {
  description = "Load Balancer DNS Name"
  value       = aws_lb.app_lb.dns_name
}

output "load_balancer_zone_id" {
  description = "Load Balancer Zone ID"
  value       = aws_lb.app_lb.zone_id
}

output "asg_name" {
  description = "Auto Scaling Group Name"
  value       = aws_autoscaling_group.app_asg.name
}

output "launch_template_id" {
  description = "Launch Template ID"
  value       = aws_launch_template.app_lt.id
}

output "target_group_arn" {
  description = "Target Group ARN"
  value       = aws_lb_target_group.app_tg.arn
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value       = aws_subnet.private[*].id
}