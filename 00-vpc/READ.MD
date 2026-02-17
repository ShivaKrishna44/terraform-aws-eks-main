Admin@DESKTOP-GPT9HJM MINGW64 /c/Devops/Repository/terraform-aws-eks/terraform-aws-eks-main/00-vpc (main)
$ terraform apply -lock=false
module.vpc.data.aws_availability_zones.available: Reading...
module.vpc.data.aws_vpc.default: Reading...
module.vpc.data.aws_availability_zones.available: Read complete after 1s [id=us-east-1]
module.vpc.data.aws_vpc.default: Read complete after 2s [id=vpc-0e9cb61cb5f800a6d]
module.vpc.data.aws_route_table.main: Reading...
module.vpc.data.aws_route_table.main: Read complete after 1s [id=rtb-0427b7cbd5dcf1321]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_db_subnet_group.expense will be created
  + resource "aws_db_subnet_group" "expense" {
      + arn                     = (known after apply)
      + description             = "Managed by Terraform"
      + id                      = (known after apply)
      + name                    = "expense-dev"
      + name_prefix             = (known after apply)
      + subnet_ids              = (known after apply)
      + supported_network_types = (known after apply)
      + tags                    = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                  = (known after apply)
    }

  # aws_ssm_parameter.database_subnet_group_name will be created
  + resource "aws_ssm_parameter" "database_subnet_group_name" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/database_subnet_group_name"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.database_subnet_ids will be created
  + resource "aws_ssm_parameter" "database_subnet_ids" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/database_subnet_ids"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "StringList"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.private_subnet_ids will be created
  + resource "aws_ssm_parameter" "private_subnet_ids" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/private_subnet_ids"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "StringList"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.public_subnet_ids will be created
  + resource "aws_ssm_parameter" "public_subnet_ids" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/public_subnet_ids"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "StringList"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # aws_ssm_parameter.vpc_id will be created
  + resource "aws_ssm_parameter" "vpc_id" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/vpc_id"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + version        = (known after apply)
    }

  # module.vpc.aws_eip.nat will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + arn                  = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + ipam_pool_id         = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + ptr_record           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = (known after apply)
    }

  # module.vpc.aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.example will be created
  + resource "aws_nat_gateway" "example" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
    }

  # module.vpc.aws_route.database will be created
  + resource "aws_route" "database" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # module.vpc.aws_route.database_peering[0] will be created
  + resource "aws_route" "database_peering" {
      + destination_cidr_block    = "172.31.0.0/16"
      + id                        = (known after apply)
      + instance_id               = (known after apply)
      + instance_owner_id         = (known after apply)
      + network_interface_id      = (known after apply)
      + origin                    = (known after apply)
      + route_table_id            = (known after apply)
      + state                     = (known after apply)
      + vpc_peering_connection_id = (known after apply)
    }

  # module.vpc.aws_route.default_peering[0] will be created
  + resource "aws_route" "default_peering" {
      + destination_cidr_block    = "10.0.0.0/16"
      + id                        = (known after apply)
      + instance_id               = (known after apply)
      + instance_owner_id         = (known after apply)
      + network_interface_id      = (known after apply)
      + origin                    = (known after apply)
      + route_table_id            = "rtb-0427b7cbd5dcf1321"
      + state                     = (known after apply)
      + vpc_peering_connection_id = (known after apply)
    }

  # module.vpc.aws_route.private will be created
  + resource "aws_route" "private" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # module.vpc.aws_route.private_peering[0] will be created
  + resource "aws_route" "private_peering" {
      + destination_cidr_block    = "172.31.0.0/16"
      + id                        = (known after apply)
      + instance_id               = (known after apply)
      + instance_owner_id         = (known after apply)
      + network_interface_id      = (known after apply)
      + origin                    = (known after apply)
      + route_table_id            = (known after apply)
      + state                     = (known after apply)
      + vpc_peering_connection_id = (known after apply)
    }

  # module.vpc.aws_route.public will be created
  + resource "aws_route" "public" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # module.vpc.aws_route.public_peering[0] will be created
  + resource "aws_route" "public_peering" {
      + destination_cidr_block    = "172.31.0.0/16"
      + id                        = (known after apply)
      + instance_id               = (known after apply)
      + instance_owner_id         = (known after apply)
      + network_interface_id      = (known after apply)
      + origin                    = (known after apply)
      + route_table_id            = (known after apply)
      + state                     = (known after apply)
      + vpc_peering_connection_id = (known after apply)
    }

  # module.vpc.aws_route_table.database will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[0] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[1] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.database[0] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.21.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.database[1] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.22.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-database-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.11.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.12.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-private-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public-us-east-1a"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-public-us-east-1b"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Purpose"     = "assignment"
          + "Terraform"   = "true"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Purpose"     = "assignment"
          + "Terraform"   = "true"
        }
    }

  # module.vpc.aws_vpc_peering_connection.default[0] will be created
  + resource "aws_vpc_peering_connection" "default" {
      + accept_status = (known after apply)
      + auto_accept   = true
      + id            = (known after apply)
      + peer_owner_id = (known after apply)
      + peer_region   = (known after apply)
      + peer_vpc_id   = "vpc-0e9cb61cb5f800a6d"
      + tags          = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-default"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all      = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-default"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id        = (known after apply)

      + accepter (known after apply)

      + requester (known after apply)
    }

Plan: 33 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + public_subnet_ids = [
      + (known after apply),
      + (known after apply),
    ]

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.vpc.aws_eip.nat: Creating...
module.vpc.aws_vpc.main: Creating...
module.vpc.aws_eip.nat: Creation complete after 4s [id=eipalloc-0c9a09b4a2f3eddea]
module.vpc.aws_vpc.main: Still creating... [10s elapsed]
module.vpc.aws_vpc.main: Creation complete after 15s [id=vpc-00a378713e7163e73]
module.vpc.aws_internet_gateway.main: Creating...
module.vpc.aws_subnet.database[1]: Creating...
aws_ssm_parameter.vpc_id: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_vpc_peering_connection.default[0]: Creating...
module.vpc.aws_subnet.database[0]: Creating...
module.vpc.aws_route_table.private: Creating...
module.vpc.aws_route_table.public: Creating...
module.vpc.aws_route_table.database: Creating...
aws_ssm_parameter.vpc_id: Creation complete after 2s [id=/expense/dev/vpc_id]
module.vpc.aws_subnet.private[1]: Creating...
module.vpc.aws_subnet.database[1]: Creation complete after 2s [id=subnet-0fa1883b11d89b66a]
module.vpc.aws_subnet.private[0]: Creating...
module.vpc.aws_subnet.database[0]: Creation complete after 2s [id=subnet-037207004e71a06c6]
aws_ssm_parameter.database_subnet_ids: Creating...
module.vpc.aws_internet_gateway.main: Creation complete after 2s [id=igw-0eb7cbd212e12f53f]
aws_db_subnet_group.expense: Creating...
module.vpc.aws_route_table.public: Creation complete after 2s [id=rtb-00cd7efbc21ebceeb]
module.vpc.aws_route.public: Creating...
module.vpc.aws_route_table.private: Creation complete after 2s [id=rtb-0d53a481930bd72fb]
module.vpc.aws_route_table.database: Creation complete after 2s [id=rtb-0bf998da3a8cfbe93]
module.vpc.aws_route_table_association.database[0]: Creating...
module.vpc.aws_route_table_association.database[1]: Creating...
aws_ssm_parameter.database_subnet_ids: Creation complete after 1s [id=/expense/dev/database_subnet_ids]
module.vpc.aws_vpc_peering_connection.default[0]: Creation complete after 3s [id=pcx-015df3383aed5737c]
module.vpc.aws_route.private_peering[0]: Creating...
module.vpc.aws_route.default_peering[0]: Creating...
module.vpc.aws_route_table_association.database[0]: Creation complete after 1s [id=rtbassoc-0d7fe04b1564debe8]
module.vpc.aws_route.database_peering[0]: Creating...
module.vpc.aws_route_table_association.database[1]: Creation complete after 1s [id=rtbassoc-0499f5560686311c2]
module.vpc.aws_route.public_peering[0]: Creating...
module.vpc.aws_subnet.private[1]: Creation complete after 2s [id=subnet-04a5d4e4b4f8119a5]
module.vpc.aws_subnet.private[0]: Creation complete after 2s [id=subnet-05fe073020518881e]
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route.public: Creation complete after 2s [id=r-rtb-00cd7efbc21ebceeb1080289494]
aws_ssm_parameter.private_subnet_ids: Creating...
module.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-0d815304f1ed5d22b]
module.vpc.aws_route_table_association.private[0]: Creation complete after 1s [id=rtbassoc-0a744c9b65704fe5d]
aws_db_subnet_group.expense: Creation complete after 3s [id=expense-dev]
aws_ssm_parameter.database_subnet_group_name: Creating...
aws_ssm_parameter.private_subnet_ids: Creation complete after 1s [id=/expense/dev/private_subnet_ids]
module.vpc.aws_route.private_peering[0]: Creation complete after 2s [id=r-rtb-0d53a481930bd72fb440959817]
module.vpc.aws_route.default_peering[0]: Creation complete after 2s [id=r-rtb-0427b7cbd5dcf1321179966490]
module.vpc.aws_route.database_peering[0]: Creation complete after 2s [id=r-rtb-0bf998da3a8cfbe93440959817]
module.vpc.aws_route.public_peering[0]: Creation complete after 2s [id=r-rtb-00cd7efbc21ebceeb440959817]
aws_ssm_parameter.database_subnet_group_name: Creation complete after 1s [id=/expense/dev/database_subnet_group_name]
module.vpc.aws_subnet.public[1]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[0]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[0]: Creation complete after 13s [id=subnet-0ddeabbce31a91683]
module.vpc.aws_subnet.public[1]: Creation complete after 15s [id=subnet-0cdaaf0a3f583d112]
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.public[0]: Creating...
aws_ssm_parameter.public_subnet_ids: Creating...
module.vpc.aws_nat_gateway.example: Creating...
module.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-007ae36604a2ea746]
aws_ssm_parameter.public_subnet_ids: Creation complete after 1s [id=/expense/dev/public_subnet_ids]
module.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-0f6cce5ab39f64eca]
module.vpc.aws_nat_gateway.example: Still creating... [10s elapsed]
module.vpc.aws_nat_gateway.example: Creation complete after 1m38s [id=nat-03390c0b04b6b23dd]
module.vpc.aws_route.private: Creating...
module.vpc.aws_route.database: Creating...
module.vpc.aws_route.private: Creation complete after 2s [id=r-rtb-0d53a481930bd72fb1080289494]
module.vpc.aws_route.database: Creation complete after 2s [id=r-rtb-0bf998da3a8cfbe931080289494]

Apply complete! Resources: 33 added, 0 changed, 0 destroyed.

Outputs:

public_subnet_ids = [
  "subnet-0ddeabbce31a91683",
  "subnet-0cdaaf0a3f583d112",
]

