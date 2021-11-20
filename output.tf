output "public_ips" {
   value = aws_instance.server_grupo_3.*.public_ip
}