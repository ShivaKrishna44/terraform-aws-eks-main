Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # aws_key_pair.eks will be created
  + resource "aws_key_pair" "eks" {
      + arn             = (known after apply)
      + fingerprint     = (known after apply)
      + id              = (known after apply)
      + key_name        = "expense-eks"
      + key_name_prefix = (known after apply)
      + key_pair_id     = (known after apply)
      + key_type        = (known after apply)
      + public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCXP3OlU7QAQ0nshGjVio/bS2LBAbRsQS2R42o2zFXNxpRsNm3wqN/qTH0bNYtQuLrQWWJGkRJ2IsULwaW/gHADAJAaRJxOk1sALCcPgkvgGQkOg3wZ2e866GCo3WzMR0xPVUcowf6PDcPiKZqgSRs/mLhrhyzfSJv7e+CpC0gWyzB7B12MNwqJaBQGP7jDkgBdxIGXsxViYdFqK/lgLWYqqCIoJuIXaWDixEdnuHGVwTUUAaEvIVJqwYsz/ihUoDAehaBV1QWEs4iY8FNZ0dyfto8YwuBVQ0EZO8ptA5pDDt6corWLLR8FZvQpTtQZ7TOVjZmdAhmBErwzZR2euPjCV/kBV05K9KMYEOvRmgECP5Vyhe64irbbOHydwTPLqUZPQ0czNGfkm3PJzwac4Fs9sDnTN7faoFnMnloU636EafNg1h3WrcFD/lTmF4HePYMfvJId2hLpvxY6rWLEINeoY8IC70zTLSO8JSBeknLGRPPJ0G1evAaS5PhrLzLNYRN6K+czGtH/wS/eJOTiqwZ2DX79EBufOmj3mzBnN4wHxpDmd/3pxZ6h58BXMD2fMmllGU9+jTjei0xAuIa45Nrw/GQOqh5ciZSWszo7zhiVxVoGaKcgD9gEKCt2M9EDnnO7u5iUcsnHDxvEngxH8MUC89FC+HPCL+rJxDv74+fXRQ== eks-key"
      + tags_all        = (known after apply)
    }

  # module.eks.data.aws_eks_addon_version.this["coredns"] will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_eks_addon_version" "this" {
      + addon_name         = "coredns"
      + id                 = (known after apply)
      + kubernetes_version = "1.32"
      + version            = (known after apply)
    }

  # module.eks.data.aws_eks_addon_version.this["eks-pod-identity-agent"] will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_eks_addon_version" "this" {
      + addon_name         = "eks-pod-identity-agent"
      + id                 = (known after apply)
      + kubernetes_version = "1.32"
      + version            = (known after apply)
    }

  # module.eks.data.aws_eks_addon_version.this["kube-proxy"] will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_eks_addon_version" "this" {
      + addon_name         = "kube-proxy"
      + id                 = (known after apply)
      + kubernetes_version = "1.32"
      + version            = (known after apply)
    }

  # module.eks.data.aws_eks_addon_version.this["metrics-server"] will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_eks_addon_version" "this" {
      + addon_name         = "metrics-server"
      + id                 = (known after apply)
      + kubernetes_version = "1.32"
      + version            = (known after apply)
    }

  # module.eks.data.aws_eks_addon_version.this["vpc-cni"] will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_eks_addon_version" "this" {
      + addon_name         = "vpc-cni"
      + id                 = (known after apply)
      + kubernetes_version = "1.32"
      + version            = (known after apply)
    }

  # module.eks.data.tls_certificate.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "tls_certificate" "this" {
      + certificates = (known after apply)
      + id           = (known after apply)
      + url          = (known after apply)
    }

  # module.eks.aws_cloudwatch_log_group.this[0] will be created
  + resource "aws_cloudwatch_log_group" "this" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + log_group_class   = (known after apply)
      + name              = "/aws/eks/expense-dev/cluster"
      + name_prefix       = (known after apply)
      + retention_in_days = 90
      + skip_destroy      = false
      + tags              = {
          + "Environment" = "dev"
          + "Name"        = "/aws/eks/expense-dev/cluster"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all          = {
          + "Environment" = "dev"
          + "Name"        = "/aws/eks/expense-dev/cluster"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
    }

  # module.eks.aws_ec2_tag.cluster_primary_security_group["Environment"] will be created
  + resource "aws_ec2_tag" "cluster_primary_security_group" {
      + id          = (known after apply)
      + key         = "Environment"
      + resource_id = (known after apply)
      + value       = "dev"
    }

  # module.eks.aws_ec2_tag.cluster_primary_security_group["Project"] will be created
  + resource "aws_ec2_tag" "cluster_primary_security_group" {
      + id          = (known after apply)
      + key         = "Project"
      + resource_id = (known after apply)
      + value       = "expense"
    }

  # module.eks.aws_ec2_tag.cluster_primary_security_group["Terraform"] will be created
  + resource "aws_ec2_tag" "cluster_primary_security_group" {
      + id          = (known after apply)
      + key         = "Terraform"
      + resource_id = (known after apply)
      + value       = "true"
    }

  # module.eks.aws_eks_access_entry.this["cluster_creator"] will be created
  + resource "aws_eks_access_entry" "this" {
      + access_entry_arn  = (known after apply)
      + cluster_name      = (known after apply)
      + created_at        = (known after apply)
      + id                = (known after apply)
      + kubernetes_groups = (known after apply)
      + modified_at       = (known after apply)
      + principal_arn     = "arn:aws:iam::658643245214:user/cva44"
      + tags              = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all          = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + type              = "STANDARD"
      + user_name         = (known after apply)
    }

  # module.eks.aws_eks_access_policy_association.this["cluster_creator_admin"] will be created
  + resource "aws_eks_access_policy_association" "this" {
      + associated_at = (known after apply)
      + cluster_name  = (known after apply)
      + id            = (known after apply)
      + modified_at   = (known after apply)
      + policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
      + principal_arn = "arn:aws:iam::658643245214:user/cva44"

      + access_scope {
          + type = "cluster"
        }
    }

  # module.eks.aws_eks_addon.this["coredns"] will be created
  + resource "aws_eks_addon" "this" {
      + addon_name                  = "coredns"
      + addon_version               = (known after apply)
      + arn                         = (known after apply)
      + cluster_name                = (known after apply)
      + configuration_values        = (known after apply)
      + created_at                  = (known after apply)
      + id                          = (known after apply)
      + modified_at                 = (known after apply)
      + preserve                    = true
      + resolve_conflicts_on_create = "OVERWRITE"
      + resolve_conflicts_on_update = "OVERWRITE"
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }

      + timeouts {}
    }

  # module.eks.aws_eks_addon.this["eks-pod-identity-agent"] will be created
  + resource "aws_eks_addon" "this" {
      + addon_name                  = "eks-pod-identity-agent"
      + addon_version               = (known after apply)
      + arn                         = (known after apply)
      + cluster_name                = (known after apply)
      + configuration_values        = (known after apply)
      + created_at                  = (known after apply)
      + id                          = (known after apply)
      + modified_at                 = (known after apply)
      + preserve                    = true
      + resolve_conflicts_on_create = "OVERWRITE"
      + resolve_conflicts_on_update = "OVERWRITE"
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }

      + timeouts {}
    }

  # module.eks.aws_eks_addon.this["kube-proxy"] will be created
  + resource "aws_eks_addon" "this" {
      + addon_name                  = "kube-proxy"
      + addon_version               = (known after apply)
      + arn                         = (known after apply)
      + cluster_name                = (known after apply)
      + configuration_values        = (known after apply)
      + created_at                  = (known after apply)
      + id                          = (known after apply)
      + modified_at                 = (known after apply)
      + preserve                    = true
      + resolve_conflicts_on_create = "OVERWRITE"
      + resolve_conflicts_on_update = "OVERWRITE"
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }

      + timeouts {}
    }

  # module.eks.aws_eks_addon.this["metrics-server"] will be created
  + resource "aws_eks_addon" "this" {
      + addon_name                  = "metrics-server"
      + addon_version               = (known after apply)
      + arn                         = (known after apply)
      + cluster_name                = (known after apply)
      + configuration_values        = (known after apply)
      + created_at                  = (known after apply)
      + id                          = (known after apply)
      + modified_at                 = (known after apply)
      + preserve                    = true
      + resolve_conflicts_on_create = "OVERWRITE"
      + resolve_conflicts_on_update = "OVERWRITE"
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }

      + timeouts {}
    }

  # module.eks.aws_eks_addon.this["vpc-cni"] will be created
  + resource "aws_eks_addon" "this" {
      + addon_name                  = "vpc-cni"
      + addon_version               = (known after apply)
      + arn                         = (known after apply)
      + cluster_name                = (known after apply)
      + configuration_values        = (known after apply)
      + created_at                  = (known after apply)
      + id                          = (known after apply)
      + modified_at                 = (known after apply)
      + preserve                    = true
      + resolve_conflicts_on_create = "OVERWRITE"
      + resolve_conflicts_on_update = "OVERWRITE"
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }

      + timeouts {}
    }

  # module.eks.aws_eks_cluster.this[0] will be created
  + resource "aws_eks_cluster" "this" {
      + arn                           = (known after apply)
      + bootstrap_self_managed_addons = true
      + certificate_authority         = (known after apply)
      + cluster_id                    = (known after apply)
      + created_at                    = (known after apply)
      + enabled_cluster_log_types     = [
          + "api",
          + "audit",
          + "authenticator",
        ]
      + endpoint                      = (known after apply)
      + id                            = (known after apply)
      + identity                      = (known after apply)
      + name                          = "expense-dev"
      + platform_version              = (known after apply)
      + role_arn                      = (known after apply)
      + status                        = (known after apply)
      + tags                          = {
          + "Environment"           = "dev"
          + "Name"                  = "expense-dev"
          + "Project"               = "expense"
          + "Terraform"             = "true"
          + "terraform-aws-modules" = "eks"
        }
      + tags_all                      = {
          + "Environment"           = "dev"
          + "Name"                  = "expense-dev"
          + "Project"               = "expense"
          + "Terraform"             = "true"
          + "terraform-aws-modules" = "eks"
        }
      + version                       = "1.32"

      + access_config {
          + authentication_mode                         = "API_AND_CONFIG_MAP"
          + bootstrap_cluster_creator_admin_permissions = false
        }

      + encryption_config {
          + resources = [
              + "secrets",
            ]

          + provider {
              + key_arn = (known after apply)
            }
        }

      + kubernetes_network_config {
          + ip_family         = "ipv4"
          + service_ipv4_cidr = (known after apply)
          + service_ipv6_cidr = (known after apply)

          + elastic_load_balancing (known after apply)
        }

      + timeouts {}

      + upgrade_policy (known after apply)

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = true
          + endpoint_public_access    = false
          + public_access_cidrs       = [
              + "0.0.0.0/0",
            ]
          + security_group_ids        = (sensitive value)
          + subnet_ids                = (sensitive value)
          + vpc_id                    = (known after apply)
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be created
  + resource "aws_iam_openid_connect_provider" "oidc_provider" {
      + arn             = (known after apply)
      + client_id_list  = [
          + "sts.amazonaws.com",
        ]
      + id              = (known after apply)
      + tags            = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all        = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + thumbprint_list = (known after apply)
      + url             = (known after apply)
    }

  # module.eks.aws_iam_policy.cluster_encryption[0] will be created
  + resource "aws_iam_policy" "cluster_encryption" {
      + arn              = (known after apply)
      + attachment_count = (known after apply)
      + description      = "Cluster encryption policy to allow cluster role to utilize CMK provided"
      + id               = (known after apply)
      + name             = (known after apply)
      + name_prefix      = "expense-dev-cluster-ClusterEncryption"
      + path             = "/"
      + policy           = (known after apply)
      + policy_id        = (known after apply)
      + tags             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
    }

  # module.eks.aws_iam_policy.custom[0] will be created
  + resource "aws_iam_policy" "custom" {
      + arn              = (known after apply)
      + attachment_count = (known after apply)
      + id               = (known after apply)
      + name             = (known after apply)
      + name_prefix      = "expense-dev-cluster-"
      + path             = "/"
      + policy           = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = [
                          + "ec2:RunInstances",
                          + "ec2:CreateLaunchTemplate",
                          + "ec2:CreateFleet",
                        ]
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                          + StringLike   = {
                              + "aws:RequestTag/eks:kubernetes-node-class-name" = "*"
                              + "aws:RequestTag/eks:kubernetes-node-pool-name"  = "*"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = "*"
                      + Sid       = "Compute"
                    },
                  + {
                      + Action    = [
                          + "ec2:CreateVolume",
                          + "ec2:CreateSnapshot",
                        ]
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = [
                          + "arn:aws:ec2:*:*:volume/*",
                          + "arn:aws:ec2:*:*:snapshot/*",
                        ]
                      + Sid       = "Storage"
                    },
                  + {
                      + Action    = "ec2:CreateNetworkInterface"
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name"         = "${aws:PrincipalTag/eks:eks-cluster-name}"
                              + "aws:RequestTag/eks:kubernetes-cni-node-name" = "*"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = "*"
                      + Sid       = "Networking"
                    },
                  + {
                      + Action    = [
                          + "elasticloadbalancing:CreateTargetGroup",
                          + "elasticloadbalancing:CreateRule",
                          + "elasticloadbalancing:CreateLoadBalancer",
                          + "elasticloadbalancing:CreateListener",
                          + "ec2:CreateSecurityGroup",
                        ]
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = "*"
                      + Sid       = "LoadBalancer"
                    },
                  + {
                      + Action    = "shield:CreateProtection"
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = "*"
                      + Sid       = "ShieldProtection"
                    },
                  + {
                      + Action    = "shield:TagResource"
                      + Condition = {
                          + StringEquals = {
                              + "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      + Effect    = "Allow"
                      + Resource  = "arn:aws:shield::*:protection/*"
                      + Sid       = "ShieldTagResource"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + policy_id        = (known after apply)
      + tags             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
    }

  # module.eks.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = [
                          + "sts:TagSession",
                          + "sts:AssumeRole",
                        ]
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "eks.amazonaws.com"
                        }
                      + Sid       = "EKSClusterAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "expense-dev-cluster-"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all              = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + unique_id             = (known after apply)

      + inline_policy (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.cluster_encryption[0] will be created
  + resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      + role       = (known after apply)
    }

  # module.eks.time_sleep.this[0] will be created
  + resource "time_sleep" "this" {
      + create_duration = "30s"
      + id              = (known after apply)
      + triggers        = {
          + "cluster_certificate_authority_data" = (known after apply)
          + "cluster_endpoint"                   = (known after apply)
          + "cluster_name"                       = (known after apply)
          + "cluster_service_cidr"               = (known after apply)
          + "cluster_version"                    = "1.32"
        }
    }

  # module.eks.module.eks_managed_node_group["green"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = (known after apply)
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = [
          + "m5.xlarge",
        ]
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "green-"
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (sensitive value)
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "green"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "green"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + version                = "1.32"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + node_repair_config (known after apply)

      + scaling_config {
          + desired_size = 2
          + max_size     = 10
          + min_size     = 2
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSNodeAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + description           = "EKS managed node group IAM role"
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "green-eks-node-group-"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all              = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + unique_id             = (known after apply)

      + inline_policy (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEBSCSIDriverPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "additional" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEFSCSIDriverPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "additional" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEKSLoadBalancingPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "additional" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["green"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for green EKS managed node group"
      + id                     = (known after apply)
      + key_name               = "expense-eks"
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "green-"
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + update_default_version = true
      + vpc_security_group_ids = (sensitive value)
        # (2 unchanged attributes hidden)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Environment" = "dev"
              + "Name"        = "green"
              + "Project"     = "expense"
              + "Terraform"   = "true"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Environment" = "dev"
              + "Name"        = "green"
              + "Project"     = "expense"
              + "Terraform"   = "true"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Environment" = "dev"
              + "Name"        = "green"
              + "Project"     = "expense"
              + "Terraform"   = "true"
            }
        }
    }

  # module.eks.module.kms.data.aws_iam_policy_document.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "this" {
      + id                        = (known after apply)
      + json                      = (known after apply)
      + minified_json             = (known after apply)
      + override_policy_documents = []
      + source_policy_documents   = []

      + statement {
          + actions   = [
              + "kms:*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "Default"

          + principals {
              + identifiers = [
                  + "arn:aws:iam::658643245214:root",
                ]
              + type        = "AWS"
            }
        }
      + statement {
          + actions   = [
              + "kms:CancelKeyDeletion",
              + "kms:Create*",
              + "kms:Delete*",
              + "kms:Describe*",
              + "kms:Disable*",
              + "kms:Enable*",
              + "kms:Get*",
              + "kms:ImportKeyMaterial",
              + "kms:List*",
              + "kms:Put*",
              + "kms:ReplicateKey",
              + "kms:Revoke*",
              + "kms:ScheduleKeyDeletion",
              + "kms:TagResource",
              + "kms:UntagResource",
              + "kms:Update*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyAdministration"

          + principals {
              + identifiers = [
                  + "arn:aws:iam::658643245214:user/cva44",
                ]
              + type        = "AWS"
            }
        }
      + statement {
          + actions   = [
              + "kms:Decrypt",
              + "kms:DescribeKey",
              + "kms:Encrypt",
              + "kms:GenerateDataKey*",
              + "kms:ReEncrypt*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyUsage"

          + principals {
              + identifiers = [
                  + (known after apply),
                ]
              + type        = "AWS"
            }
        }
    }

  # module.eks.module.kms.aws_kms_alias.this["cluster"] will be created
  + resource "aws_kms_alias" "this" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = "alias/eks/expense-dev"
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # module.eks.module.kms.aws_kms_key.this[0] will be created
  + resource "aws_kms_key" "this" {
      + arn                                = (known after apply)
      + bypass_policy_lockout_safety_check = false
      + customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      + description                        = "expense-dev cluster encryption key"
      + enable_key_rotation                = true
      + id                                 = (known after apply)
      + is_enabled                         = true
      + key_id                             = (known after apply)
      + key_usage                          = "ENCRYPT_DECRYPT"
      + multi_region                       = false
      + policy                             = (known after apply)
      + rotation_period_in_days            = (known after apply)
      + tags                               = {
          + "Environment"           = "dev"
          + "Name"                  = "expense-dev"
          + "Project"               = "expense"
          + "Terraform"             = "true"
          + "terraform-aws-modules" = "eks"
        }
      + tags_all                           = {
          + "Environment"           = "dev"
          + "Name"                  = "expense-dev"
          + "Project"               = "expense"
          + "Terraform"             = "true"
          + "terraform-aws-modules" = "eks"
        }
    }

  # module.eks.module.eks_managed_node_group["green"].module.user_data.null_resource.validate_cluster_service_cidr will be created
  + resource "null_resource" "validate_cluster_service_cidr" {
      + id = (known after apply)
    }

Plan: 34 to add, 0 to change, 0 to destroy.
module.eks.aws_cloudwatch_log_group.this[0]: Creating...
aws_key_pair.eks: Creating...
module.eks.aws_iam_policy.custom[0]: Creating...
module.eks.aws_iam_role.this[0]: Creating...
aws_key_pair.eks: Creation complete after 1s [id=expense-eks]
module.eks.module.eks_managed_node_group["green"].aws_iam_role.this[0]: Creating...
module.eks.aws_iam_policy.custom[0]: Creation complete after 1s [id=arn:aws:iam::658643245214:policy/expense-dev-cluster-20260218102628844100000002]
module.eks.aws_iam_role.this[0]: Creation complete after 1s [id=expense-dev-cluster-20260218102628844100000001]
module.eks.aws_iam_role_policy_attachment.custom[0]: Creating...
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Creating...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Creating...
module.eks.aws_cloudwatch_log_group.this[0]: Creation complete after 1s [id=/aws/eks/expense-dev/cluster]
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=1611872120]
module.eks.module.kms.aws_kms_key.this[0]: Creating...
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Creation complete after 1s [id=expense-dev-cluster-20260218102628844100000001-20260218102630689200000004]
module.eks.aws_iam_role_policy_attachment.custom[0]: Creation complete after 1s [id=expense-dev-cluster-20260218102628844100000001-20260218102630876800000005]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Creation complete after 1s [id=expense-dev-cluster-20260218102628844100000001-20260218102630948900000006]
module.eks.module.eks_managed_node_group["green"].aws_iam_role.this[0]: Creation complete after 2s [id=green-eks-node-group-20260218102630277400000003]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEFSCSIDriverPolicy"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEKSLoadBalancingPolicy"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEBSCSIDriverPolicy"]: Creating...
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-20260218102631913400000009]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-20260218102631908900000007]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-20260218102631908900000008]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEFSCSIDriverPolicy"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-2026021810263191790000000a]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEKSLoadBalancingPolicy"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-2026021810263192540000000b]
module.eks.module.eks_managed_node_group["green"].aws_iam_role_policy_attachment.additional["AmazonEBSCSIDriverPolicy"]: Creation complete after 0s [id=green-eks-node-group-20260218102630277400000003-2026021810263194690000000c]
module.eks.module.kms.aws_kms_key.this[0]: Still creating... [00m10s elapsed]
module.eks.module.kms.aws_kms_key.this[0]: Still creating... [00m20s elapsed]
module.eks.module.kms.aws_kms_key.this[0]: Creation complete after 26s [id=95ca5c6b-0f3a-4ea1-8b59-600844799164]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Creating...
module.eks.aws_iam_policy.cluster_encryption[0]: Creating...
module.eks.aws_eks_cluster.this[0]: Creating...
module.eks.module.kms.aws_kms_alias.this["cluster"]: Creation complete after 1s [id=alias/eks/expense-dev]
module.eks.aws_iam_policy.cluster_encryption[0]: Creation complete after 1s [id=arn:aws:iam::658643245214:policy/expense-dev-cluster-ClusterEncryption2026021810265824050000000d]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Creating...
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Creation complete after 1s [id=expense-dev-cluster-20260218102628844100000001-2026021810265940130000000e]
module.eks.aws_eks_cluster.this[0]: Still creating... [00m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [00m20s elapsed]
