output "subnet_id" {
  description = "The subnet ID"
  value = data.aws_subnet.target_subnet.id
}