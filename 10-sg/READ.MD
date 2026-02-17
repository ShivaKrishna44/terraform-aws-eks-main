Admin@DESKTOP-GPT9HJM MINGW64 /c/Devops/Repository/terraform-aws-eks/terraform-aws-eks-main/10-sg (main)
$ terraform apply -lock=false
data.aws_ssm_parameter.vpc_id: Reading...
data.aws_ssm_parameter.vpc_id: Read complete after 1s [id=/expense/dev/vpc_id]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_security_group_rule.alb_ingress_bastion will be created
  + resource "aws_security_group_rule" "alb_ingress_bastion" {
      + from_port                = 80
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 80
      + type                     = "ingress"
    }

  # aws_security_group_rule.alb_ingress_bastion_https will be created
  + resource "aws_security_group_rule" "alb_ingress_bastion_https" {
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # aws_security_group_rule.alb_ingress_public_https will be created
  + resource "aws_security_group_rule" "alb_ingress_public_https" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # aws_security_group_rule.bastion_public will be created
  + resource "aws_security_group_rule" "bastion_public" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 22
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 22
      + type                     = "ingress"
    }

  # aws_security_group_rule.eks_control_plane_bastion will be created
  + resource "aws_security_group_rule" "eks_control_plane_bastion" {
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # aws_security_group_rule.eks_control_plane_node will be created
  + resource "aws_security_group_rule" "eks_control_plane_node" {
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "ingress"
    }

  # aws_security_group_rule.eks_node_alb_ingress will be created
  + resource "aws_security_group_rule" "eks_node_alb_ingress" {
      + from_port                = 8080
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 8080
      + type                     = "ingress"
    }

  # aws_security_group_rule.eks_node_eks_control_plane will be created
  + resource "aws_security_group_rule" "eks_node_eks_control_plane" {
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "ingress"
    }

  # aws_security_group_rule.mysql_bastion will be created
  + resource "aws_security_group_rule" "mysql_bastion" {
      + from_port                = 3306
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 3306
      + type                     = "ingress"
    }

  # aws_security_group_rule.mysql_eks_node will be created
  + resource "aws_security_group_rule" "mysql_eks_node" {
      + from_port                = 3306
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 3306
      + type                     = "ingress"
    }

  # aws_security_group_rule.node_bastion will be created
  + resource "aws_security_group_rule" "node_bastion" {
      + from_port                = 22
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 22
      + type                     = "ingress"
    }

  # aws_security_group_rule.node_vpc will be created
  + resource "aws_security_group_rule" "node_vpc" {
      + cidr_blocks              = [
          + "10.0.0.0/16",
        ]
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "ingress"
    }

  # aws_ssm_parameter.alb_ingress_sg_id will be created
  + resource "aws_ssm_parameter" "alb_ingress_sg_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/alb_ingress_sg_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.bastion_sg_id will be created
  + resource "aws_ssm_parameter" "bastion_sg_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/bastion_sg_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.eks_control_plane_sg_id will be created
  + resource "aws_ssm_parameter" "eks_control_plane_sg_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/eks_control_plane_sg_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.eks_node_sg_id will be created
  + resource "aws_ssm_parameter" "eks_node_sg_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/eks_node_sg_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.mysql_sg_id will be created
  + resource "aws_ssm_parameter" "mysql_sg_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/mysql_sg_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # module.alb_ingress_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for backend ALB in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-app-alb"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-app-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-app-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

  # module.bastion_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for bastion instances in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-bastion"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-bastion"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-bastion"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

  # module.eks_control_plane_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for backend ALB in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-eks-control-plane"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-eks-control-plane"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-eks-control-plane"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

  # module.eks_node_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for backend ALB in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-eks-node"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-eks-node"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-eks-node"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

  # module.mysql_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for MySQL instances in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-mysql"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-mysql"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-mysql"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

  # module.vpn_sg.aws_security_group.main will be created
  + resource "aws_security_group" "main" {
      + arn                    = (known after apply)
      + description            = "Created for VPN instances in expense dev"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "expense-dev-vpn"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-vpn"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-vpn"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                 = (sensitive value)
    }

Plan: 23 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.eks_node_sg.aws_security_group.main: Creating...
module.alb_ingress_sg.aws_security_group.main: Creating...
module.mysql_sg.aws_security_group.main: Creating...
module.vpn_sg.aws_security_group.main: Creating...
module.bastion_sg.aws_security_group.main: Creating...
module.eks_control_plane_sg.aws_security_group.main: Creating...
module.eks_control_plane_sg.aws_security_group.main: Creation complete after 6s [id=sg-03f21f25a0c82eec2]
module.vpn_sg.aws_security_group.main: Creation complete after 6s [id=sg-0f6892b8095e7083e]
module.mysql_sg.aws_security_group.main: Creation complete after 6s [id=sg-05bf2a8a4f1dd3ed4]
aws_ssm_parameter.eks_control_plane_sg_id: Creating...
module.bastion_sg.aws_security_group.main: Creation complete after 6s [id=sg-04487f305f9da93e7]
aws_ssm_parameter.mysql_sg_id: Creating...
module.eks_node_sg.aws_security_group.main: Creation complete after 6s [id=sg-0bad2118e0d20092c]
module.alb_ingress_sg.aws_security_group.main: Creation complete after 6s [id=sg-0a2bf2cbfe95b8b74]
aws_security_group_rule.bastion_public: Creating...
aws_ssm_parameter.bastion_sg_id: Creating...
aws_security_group_rule.eks_control_plane_bastion: Creating...
aws_security_group_rule.mysql_bastion: Creating...
aws_security_group_rule.alb_ingress_bastion_https: Creating...
aws_security_group_rule.alb_ingress_public_https: Creating...
aws_security_group_rule.alb_ingress_bastion: Creating...
aws_ssm_parameter.alb_ingress_sg_id: Creating...
aws_security_group_rule.eks_control_plane_bastion: Creation complete after 1s [id=sgrule-1946869853]
aws_security_group_rule.eks_node_alb_ingress: Creating...
aws_security_group_rule.bastion_public: Creation complete after 1s [id=sgrule-690604758]
aws_security_group_rule.mysql_eks_node: Creating...
aws_security_group_rule.alb_ingress_bastion_https: Creation complete after 1s [id=sgrule-880097438]
aws_security_group_rule.eks_control_plane_node: Creating...
aws_security_group_rule.mysql_bastion: Creation complete after 1s [id=sgrule-521620707]
aws_ssm_parameter.eks_node_sg_id: Creating...
aws_ssm_parameter.mysql_sg_id: Creation complete after 2s [id=/expense/dev/mysql_sg_id]
aws_security_group_rule.node_vpc: Creating...
aws_ssm_parameter.eks_control_plane_sg_id: Creation complete after 2s [id=/expense/dev/eks_control_plane_sg_id]
aws_security_group_rule.eks_node_eks_control_plane: Creating...
aws_ssm_parameter.alb_ingress_sg_id: Creation complete after 2s [id=/expense/dev/alb_ingress_sg_id]
aws_security_group_rule.node_bastion: Creating...
aws_ssm_parameter.bastion_sg_id: Creation complete after 2s [id=/expense/dev/bastion_sg_id]
aws_ssm_parameter.eks_node_sg_id: Creation complete after 1s [id=/expense/dev/eks_node_sg_id]
aws_security_group_rule.eks_node_alb_ingress: Creation complete after 1s [id=sgrule-864865311]
aws_security_group_rule.mysql_eks_node: Creation complete after 1s [id=sgrule-1241818756]
aws_security_group_rule.alb_ingress_public_https: Creation complete after 2s [id=sgrule-2124047731]
aws_security_group_rule.eks_control_plane_node: Creation complete after 1s [id=sgrule-193830048]
aws_security_group_rule.alb_ingress_bastion: Creation complete after 4s [id=sgrule-2025936791]
aws_security_group_rule.node_vpc: Creation complete after 2s [id=sgrule-1293841974]
aws_security_group_rule.eks_node_eks_control_plane: Creation complete after 3s [id=sgrule-347298920]
aws_security_group_rule.node_bastion: Creation complete after 4s [id=sgrule-1414490722]

Apply complete! Resources: 23 added, 0 changed, 0 destroyed.

$
