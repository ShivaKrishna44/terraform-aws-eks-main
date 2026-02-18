$ ./bastion.sh
./bastion.sh: line 6: growpart: command not found
./bastion.sh: line 7: lvextend: command not found
./bastion.sh: line 8: lvextend: command not found
./bastion.sh: line 9: xfs_growfs: command not found
./bastion.sh: line 10: xfs_growfs: command not found
./bastion.sh: line 12: dnf: command not found
./bastion.sh: line 13: dnf: command not found
./bastion.sh: line 14: dnf: command not found
./bastion.sh: line 15: systemctl: command not found
./bastion.sh: line 16: systemctl: command not found
./bastion.sh: line 17: usermod: command not found
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 54.6M  100 54.6M    0     0   970k      0  0:00:57  0:00:57 --:--:--  862k
mv: cannot move 'kubectl' to '/usr/local/bin/kubectl': No such file or directory

gzip: stdin: not in gzip format
tar: Child returned status 1
tar: Error is not recoverable: exiting now
mv: cannot stat '/tmp/eksctl': No such file or directory
Downloading https://get.helm.sh/helm-v3.20.0-windows-amd64.tar.gz
Verifying checksum... Done.
Preparing to install helm into /usr/local/bin
./get_helm.sh: line 63: sudo: command not found
Failed to install helm
        For support, go to https://github.com/helm/helm.
fatal: could not create leading directories of 'C:/Program Files/Git/opt/kubectx': Permission denied
ln: failed to create symbolic link '/usr/local/bin/kubectx': No such file or directory
ln: failed to create symbolic link '/usr/local/bin/kubens': No such file or directory
./bastion.sh: line 37: dnf: command not found


>>> Welcome to Webi! - modern tools, instant installs.  <<<
    We expect your experience to be absolutely perfect!

    Success? Star it!   https://github.com/webinstall/webi-installers
    Problem? Report it: https://github.com/webinstall/webi-installers/issues
                        (your system is Msys/MINGW64_NT-10.0-15063/x86_64 with libc & curl)

Bootstrapping Webi
    Downloading https://webinstall.dev/packages/webi/webi.sh
        to ~/.local/bin/webi
mkdir: cannot create directory ‘/root’: Permission denied







$ terraform apply -auto-approve -lock=false
data.aws_ssm_parameter.public_subnet_ids: Reading...
module.db.module.db_instance.data.aws_partition.current: Reading...
module.db.module.db_instance.data.aws_iam_policy_document.enhanced_monitoring: Reading...
data.aws_ssm_parameter.mysql_sg_id: Reading...
data.aws_ssm_parameter.database_subnet_group_name: Reading...
module.db.module.db_instance.data.aws_partition.current: Read complete after 0s [id=aws]
module.db.module.db_parameter_group.aws_db_parameter_group.this[0]: Refreshing state... [id=expense-dev-20260217145041215200000001]
module.db.module.db_option_group.aws_db_option_group.this[0]: Refreshing state... [id=expense-dev-20260217145041215200000002]
module.db.module.db_instance.data.aws_iam_policy_document.enhanced_monitoring: Read complete after 0s [id=76086537]
data.aws_ssm_parameter.database_subnet_group_name: Read complete after 0s [id=/expense/dev/database_subnet_group_name]
data.aws_ssm_parameter.public_subnet_ids: Read complete after 0s [id=/expense/dev/public_subnet_ids]
data.aws_ssm_parameter.mysql_sg_id: Read complete after 0s [id=/expense/dev/mysql_sg_id]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_route53_record.www-dev will be created
  + resource "aws_route53_record" "www-dev" {
      + allow_overwrite = true
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = "mysql-dev.vosukula.online"
      + records         = (known after apply)
      + ttl             = 5
      + type            = "CNAME"
      + zone_id         = "Z10366773K51S184GSJVZ"
    }

  # module.db.module.db_instance.aws_db_instance.this[0] will be created
  + resource "aws_db_instance" "this" {
      + address                               = (known after apply)
      + allocated_storage                     = 20
      + allow_major_version_upgrade           = false
      + apply_immediately                     = false
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_target                         = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = true
      + database_insights_mode                = (known after apply)
      + db_name                               = "transactions"
      + db_subnet_group_name                  = (sensitive value)
      + dedicated_log_volume                  = false
      + delete_automated_backups              = true
      + deletion_protection                   = false
      + domain_fqdn                           = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_lifecycle_support              = (known after apply)
      + engine_version                        = "8.0.40"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + iam_database_authentication_enabled   = false
      + id                                    = (known after apply)
      + identifier                            = "expense-dev"
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t4g.micro"
      + iops                                  = (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + listener_endpoint                     = (known after apply)
      + maintenance_window                    = (known after apply)
      + manage_master_user_password           = true
      + master_user_secret                    = (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      + max_allocated_storage                 = 0
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = false
      + nchar_character_set_name              = (known after apply)
      + network_type                          = (known after apply)
      + option_group_name                     = "expense-dev-20260217145041215200000002"
      + parameter_group_name                  = "expense-dev-20260217145041215200000001"
      + password_wo                           = (write-only attribute)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = 3306
      + publicly_accessible                   = false
      + region                                = "us-east-1"
      + replica_mode                          = (known after apply)
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_encrypted                     = true
      + storage_throughput                    = (known after apply)
      + storage_type                          = (known after apply)
      + tags                                  = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                              = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + timezone                              = (known after apply)
      + upgrade_rollout_order                 = (known after apply)
      + username                              = "root"
      + vpc_security_group_ids                = (sensitive value)
    }
  # module.db.module.db_instance.aws_db_instance.this[0] has changed
  ~ resource "aws_db_instance" "this" {
      + domain_dns_ips                        = []
        id                                    = "db-CAGXUJDLDLBWPN5445HH4N2AXM"
        tags                                  = {
            "Environment" = "dev"
            "Name"        = "expense-dev"
            "Project"     = "expense"
            "Terraform"   = "true"
        }
        # (73 unchanged attributes hidden)
    }
Terraform will perform the following actions:

  # aws_route53_record.www-dev will be created
  + resource "aws_route53_record" "www-dev" {
      + allow_overwrite = true
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = "mysql-dev.vosukula.online"
      + records         = [
          + "expense-dev.c0l24goa6r56.us-east-1.rds.amazonaws.com",
        ]
      + ttl             = 5
      + type            = "CNAME"
      + zone_id         = "Z10366773K51S184GSJVZ"
    }
