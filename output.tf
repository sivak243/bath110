output OutputInstance_Public_IP{
    description = "This Output Variable will display the Public IP"
    value = resource.aws_instance.LinuxServerEC2V1[*].public_ip
}