$ terraform apply -lock=false
data.aws_ssm_parameter.bastion_sg_id: Reading...
data.aws_ssm_parameter.public_subnet_ids: Reading...
data.aws_ssm_parameter.public_subnet_ids: Read complete after 1s [id=/expense/dev/public_subnet_ids]
data.aws_ssm_parameter.bastion_sg_id: Read complete after 1s [id=/expense/dev/bastion_sg_id]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.this will be created
  + resource "aws_instance" "this" {
      + ami                                  = "ami-0220d79f3f480ecf5"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (sensitive value)
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-bastion"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-bastion"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "63f233234f43686fe97cb78a068ec0778e948314"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (sensitive value)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device {
          + delete_on_termination = true
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags_all              = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = 50
          + volume_type           = "gp3"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.this: Creating...
aws_instance.this: Still creating... [10s elapsed]
aws_instance.this: Creation complete after 17s [id=i-035a7ad4b4b3670ad]

