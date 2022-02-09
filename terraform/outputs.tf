output "private_key" {
  value     = tls_private_key.builder_key.private_key_pem
  sensitive = true
}

output "public_key" {
  value     = tls_private_key.builder_key.public_key_openssh
  sensitive = true
}

output "instances" {
  value     = { for arch, spot in aws_spot_instance_request.spot : arch => spot.public_ip }
  sensitive = false
}
