//Output After Run
output "vpc_arn" {
  description = "VPN ARN"
  value       = aws_vpc.main_vpc.arn
  sensitive   = true
}

output "vpc_id" {
  description = "VPN id"
  value       = aws_vpc.main_vpc.id
}

output "subnet_id" {
  description = "Subnet ARN"
  value       = aws_subnet.main_subnet.id
}

output "ips" {
  description = "VM private IP"
  value = {
    for instance in aws_instance.ec2 :
    instance.tags.name => instance.private_ip
  }
}
