output "quick-server_instance" {
  value = {
    instance_name = var.instance_name
    id            = aws_instance.quick-server.id
    private_ip    = aws_instance.quick-server.private_ip

    private_dns = aws_instance.quick-server.private_dns

    public_ip = aws_eip.quick-server-eip.public_ip
  }
}

//output "user_data_common" {
//  value = "${data.template_file.user_data.rendered}"
//}
//
//output "vpc" {
//  value = aws_vpc.quick-server
//}
//
//output "security_group" {
//  value = aws_security_group.quick-server-sg
//}