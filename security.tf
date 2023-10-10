resource "aws_security_group" "security_group04" {
  name        = var.securitygroup_name
  description = "Demo Security Group"
   vpc_id      = aws_vpc.vpc_frank.id

  ingress {
    description      = "SSH Access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   egress {
     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
     Name = var.securitygroup_name
   }
}

 resource "aws_key_pair" "frank_kp" {
   key_name   = "frank_keypair"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8kE+EQt0RZmilpX/hPbXfrYzFSaGMbQx4LqQa+RDXvjK8kkiHsoqgjul0PYdM0leg9IJGiHhUI75Rkd4yAkOcMRiYNhwdgmWUR322MnWXi22i3fR1suJ63cb7J+fr+nf/JXvIarWf4VONaQxwNPmwatfRjH4Vb1YosE5mhQJTM9/1kXJJFvSplr6zssgKpe8ns+w7oiHwrI03wPqq5na/F7rQ52mZddMBA5qIlPA5AnZdFDUi325dnFGv3WHVNUrsWd6XTAXzd1xa/NLw5CT14pmzzmijdJ+PxFocyylUTyfInf97sm4f4nk6FMNMwmmVDvim+Mup+GkWczKJXMNJFBRz0PXdPDROd60IhjXjX7VT6uaCQk6REtSftYwt4cTyRL6IWUEW1N21e9qw4QM8aR6qn/m3XQYWswS5WwKSp/p+tdjCaE4B6/jUnUdmiZiuXkzzF+9adU/vKejZOw1TruZ+NBPhLMSzGbVfqq6eRWQsWIWlW3/IqrcZHfsTAGc= azuread\\franklinjimenez@LAPTOP-OHH2VR57"
}