data.aws_ssm_parameter.vpc_id: Reading...
module.alb.data.aws_partition.current[0]: Reading...
data.aws_ssm_parameter.ingress_alb_certificate_arn: Reading...
data.aws_ssm_parameter.alb_ingress_sg_id: Reading...
data.aws_ssm_parameter.public_subnet_ids: Reading...
module.alb.data.aws_partition.current[0]: Read complete after 0s [id=aws]
data.aws_ssm_parameter.ingress_alb_certificate_arn: Read complete after 1s [id=/expense/dev/ingress_alb_certificate_arn]
data.aws_ssm_parameter.vpc_id: Read complete after 1s [id=/expense/dev/vpc_id]
data.aws_ssm_parameter.public_subnet_ids: Read complete after 1s [id=/expense/dev/public_subnet_ids]
data.aws_ssm_parameter.alb_ingress_sg_id: Read complete after 1s [id=/expense/dev/alb_ingress_sg_id]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_lb_listener.https will be created
  + resource "aws_lb_listener" "https" {
      + arn                                                                   = (known after apply)
      + certificate_arn                                                       = (sensitive value)
      + id                                                                    = (known after apply)
      + load_balancer_arn                                                     = (known after apply)
      + port                                                                  = 443
      + protocol                                                              = "HTTPS"
      + region                                                                = "us-east-1"
      + routing_http_request_x_amzn_mtls_clientcert_header_name               = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = (known after apply)
      + routing_http_request_x_amzn_tls_cipher_suite_header_name              = (known after apply)
      + routing_http_request_x_amzn_tls_version_header_name                   = (known after apply)
      + routing_http_response_access_control_allow_credentials_header_value   = (known after apply)
      + routing_http_response_access_control_allow_headers_header_value       = (known after apply)
      + routing_http_response_access_control_allow_methods_header_value       = (known after apply)
      + routing_http_response_access_control_allow_origin_header_value        = (known after apply)
      + routing_http_response_access_control_expose_headers_header_value      = (known after apply)
      + routing_http_response_access_control_max_age_header_value             = (known after apply)
      + routing_http_response_content_security_policy_header_value            = (known after apply)
      + routing_http_response_server_enabled                                  = (known after apply)
      + routing_http_response_strict_transport_security_header_value          = (known after apply)
      + routing_http_response_x_content_type_options_header_value             = (known after apply)
      + routing_http_response_x_frame_options_header_value                    = (known after apply)
      + ssl_policy                                                            = "ELBSecurityPolicy-2016-08"
      + tags_all                                                              = (known after apply)
      + tcp_idle_timeout_seconds                                              = (known after apply)

      + default_action {
          + order = (known after apply)
          + type  = "fixed-response"

          + fixed_response {
              + content_type = "text/html"
              + message_body = "<h1>Hello, I am from frontend web ALB with HTTPS</h1>"
              + status_code  = "200"
            }
        }

      + mutual_authentication (known after apply)
    }

  # aws_lb_listener_rule.frontend will be created
  + resource "aws_lb_listener_rule" "frontend" {
      + arn          = (known after apply)
      + id           = (known after apply)
      + listener_arn = (known after apply)
      + priority     = 10
      + region       = "us-east-1"
      + tags_all     = (known after apply)

      + action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + condition {
          + host_header {
              + regex_values = []
              + values       = [
                  + "expense-dev.vosukula.online",
                ]
            }
        }
    }

  # aws_lb_target_group.frontend will be created
  + resource "aws_lb_target_group" "frontend" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = (known after apply)
      + deregistration_delay               = "60"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancer_arns                 = (known after apply)
      + load_balancing_algorithm_type      = (known after apply)
      + load_balancing_anomaly_mitigation  = (known after apply)
      + load_balancing_cross_zone_enabled  = (known after apply)
      + name                               = "expense-dev"
      + name_prefix                        = (known after apply)
      + port                               = 8080
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + region                             = "us-east-1"
      + slow_start                         = 0
      + tags_all                           = (known after apply)
      + target_type                        = "ip"
      + vpc_id                             = (sensitive value)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 10
          + matcher             = "200-299"
          + path                = "/"
          + port                = "8080"
          + protocol            = "HTTP"
          + timeout             = 5
          + unhealthy_threshold = 2
        }

      + stickiness (known after apply)

      + target_failover (known after apply)

      + target_group_health (known after apply)

      + target_health_state (known after apply)
    }

  # aws_route53_record.web_alb will be created
  + resource "aws_route53_record" "web_alb" {
      + allow_overwrite = (known after apply)
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = "expense-dev.vosukula.online"
      + type            = "A"
      + zone_id         = "Z021448929NMXW4P65UQE"

      + alias {
          + evaluate_target_health = false
          + name                   = (known after apply)
          + zone_id                = (known after apply)
        }
    }

  # aws_ssm_parameter.web_alb_listener_arn will be created
  + resource "aws_ssm_parameter" "web_alb_listener_arn" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + has_value_wo   = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/web_alb_listener_arn"
      + region         = "us-east-1"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + value_wo       = (write-only attribute)
      + version        = (known after apply)
    }

  # module.alb.aws_lb.this[0] will be created
  + resource "aws_lb" "this" {
      + arn                                                          = (known after apply)
      + arn_suffix                                                   = (known after apply)
      + client_keep_alive                                            = 3600
      + desync_mitigation_mode                                       = "defensive"
      + dns_name                                                     = (known after apply)
      + drop_invalid_header_fields                                   = true
      + enable_deletion_protection                                   = false
      + enable_http2                                                 = true
      + enable_tls_version_and_cipher_suite_headers                  = false
      + enable_waf_fail_open                                         = false
      + enable_xff_client_port                                       = false
      + enable_zonal_shift                                           = false
      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)
      + id                                                           = (known after apply)
      + idle_timeout                                                 = 60
      + internal                                                     = false
      + ip_address_type                                              = (known after apply)
      + load_balancer_type                                           = "application"
      + name                                                         = "expense-dev-ingress-alb"
      + name_prefix                                                  = (known after apply)
      + preserve_host_header                                         = false
      + region                                                       = "us-east-1"
      + secondary_ips_auto_assigned_per_subnet                       = (known after apply)
      + security_groups                                              = (sensitive value)
      + subnets                                                      = (sensitive value)
      + tags                                                         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-ingress-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                                     = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-ingress-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                                       = (known after apply)
      + xff_header_processing_mode                                   = "append"
      + zone_id                                                      = (known after apply)

      + subnet_mapping (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.
data.aws_ssm_parameter.public_subnet_ids: Reading...
module.alb.data.aws_partition.current[0]: Reading...
data.aws_ssm_parameter.alb_ingress_sg_id: Reading...
data.aws_ssm_parameter.vpc_id: Reading...
data.aws_ssm_parameter.ingress_alb_certificate_arn: Reading...
module.alb.data.aws_partition.current[0]: Read complete after 0s [id=aws]
data.aws_ssm_parameter.alb_ingress_sg_id: Read complete after 1s [id=/expense/dev/alb_ingress_sg_id]
data.aws_ssm_parameter.public_subnet_ids: Read complete after 1s [id=/expense/dev/public_subnet_ids]
data.aws_ssm_parameter.ingress_alb_certificate_arn: Read complete after 1s [id=/expense/dev/ingress_alb_certificate_arn]
data.aws_ssm_parameter.vpc_id: Read complete after 1s [id=/expense/dev/vpc_id]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_lb_listener.https will be created
  + resource "aws_lb_listener" "https" {
      + arn                                                                   = (known after apply)
      + certificate_arn                                                       = (sensitive value)
      + id                                                                    = (known after apply)
      + load_balancer_arn                                                     = (known after apply)
      + port                                                                  = 443
      + protocol                                                              = "HTTPS"
      + region                                                                = "us-east-1"
      + routing_http_request_x_amzn_mtls_clientcert_header_name               = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = (known after apply)
      + routing_http_request_x_amzn_tls_cipher_suite_header_name              = (known after apply)
      + routing_http_request_x_amzn_tls_version_header_name                   = (known after apply)
      + routing_http_response_access_control_allow_credentials_header_value   = (known after apply)
      + routing_http_response_access_control_allow_headers_header_value       = (known after apply)
      + routing_http_response_access_control_allow_methods_header_value       = (known after apply)
      + routing_http_response_access_control_allow_origin_header_value        = (known after apply)
      + routing_http_response_access_control_expose_headers_header_value      = (known after apply)
      + routing_http_response_access_control_max_age_header_value             = (known after apply)
      + routing_http_response_content_security_policy_header_value            = (known after apply)
      + routing_http_response_server_enabled                                  = (known after apply)
      + routing_http_response_strict_transport_security_header_value          = (known after apply)
      + routing_http_response_x_content_type_options_header_value             = (known after apply)
      + routing_http_response_x_frame_options_header_value                    = (known after apply)
      + ssl_policy                                                            = "ELBSecurityPolicy-2016-08"
      + tags_all                                                              = (known after apply)
      + tcp_idle_timeout_seconds                                              = (known after apply)

      + default_action {
          + order = (known after apply)
          + type  = "fixed-response"

          + fixed_response {
              + content_type = "text/html"
              + message_body = "<h1>Hello, I am from frontend web ALB with HTTPS</h1>"
              + status_code  = "200"
            }
        }

      + mutual_authentication (known after apply)
    }

  # aws_lb_listener_rule.frontend will be created
  + resource "aws_lb_listener_rule" "frontend" {
      + arn          = (known after apply)
      + id           = (known after apply)
      + listener_arn = (known after apply)
      + priority     = 10
      + region       = "us-east-1"
      + tags_all     = (known after apply)

      + action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + condition {
          + host_header {
              + regex_values = []
              + values       = [
                  + "expense-dev.vosukula.online",
                ]
            }
        }
    }

  # aws_lb_target_group.frontend will be created
  + resource "aws_lb_target_group" "frontend" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = (known after apply)
      + deregistration_delay               = "60"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancer_arns                 = (known after apply)
      + load_balancing_algorithm_type      = (known after apply)
      + load_balancing_anomaly_mitigation  = (known after apply)
      + load_balancing_cross_zone_enabled  = (known after apply)
      + name                               = "expense-dev"
      + name_prefix                        = (known after apply)
      + port                               = 8080
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + region                             = "us-east-1"
      + slow_start                         = 0
      + tags_all                           = (known after apply)
      + target_type                        = "ip"
      + vpc_id                             = (sensitive value)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 10
          + matcher             = "200-299"
          + path                = "/"
          + port                = "8080"
          + protocol            = "HTTP"
          + timeout             = 5
          + unhealthy_threshold = 2
        }

      + stickiness (known after apply)

      + target_failover (known after apply)

      + target_group_health (known after apply)

      + target_health_state (known after apply)
    }

  # aws_route53_record.web_alb will be created
  + resource "aws_route53_record" "web_alb" {
      + allow_overwrite = (known after apply)
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = "expense-dev.vosukula.online"
      + type            = "A"
      + zone_id         = "Z021448929NMXW4P65UQE"

      + alias {
          + evaluate_target_health = false
          + name                   = (known after apply)
          + zone_id                = (known after apply)
        }
    }

  # aws_ssm_parameter.web_alb_listener_arn will be created
  + resource "aws_ssm_parameter" "web_alb_listener_arn" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + has_value_wo   = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/web_alb_listener_arn"
      + region         = "us-east-1"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + value_wo       = (write-only attribute)
      + version        = (known after apply)
    }

  # module.alb.aws_lb.this[0] will be created
  + resource "aws_lb" "this" {
      + arn                                                          = (known after apply)
      + arn_suffix                                                   = (known after apply)
      + client_keep_alive                                            = 3600
      + desync_mitigation_mode                                       = "defensive"
      + dns_name                                                     = (known after apply)
      + drop_invalid_header_fields                                   = true
      + enable_deletion_protection                                   = false
      + enable_http2                                                 = true
      + enable_tls_version_and_cipher_suite_headers                  = false
      + enable_waf_fail_open                                         = false
      + enable_xff_client_port                                       = false
      + enable_zonal_shift                                           = false
      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)
      + id                                                           = (known after apply)
      + idle_timeout                                                 = 60
      + internal                                                     = false
      + ip_address_type                                              = (known after apply)
      + load_balancer_type                                           = "application"
      + name                                                         = "expense-dev-ingress-alb"
      + name_prefix                                                  = (known after apply)
      + preserve_host_header                                         = false
      + region                                                       = "us-east-1"
      + secondary_ips_auto_assigned_per_subnet                       = (known after apply)
      + security_groups                                              = (sensitive value)
      + subnets                                                      = (sensitive value)
      + tags                                                         = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-ingress-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                                                     = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev-ingress-alb"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + vpc_id                                                       = (known after apply)
      + xff_header_processing_mode                                   = "append"
      + zone_id                                                      = (known after apply)

      + subnet_mapping (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.
aws_lb_target_group.frontend: Creating...
module.alb.aws_lb.this[0]: Creating...
aws_lb_target_group.frontend: Creation complete after 4s [id=arn:aws:elasticloadbalancing:us-east-1:658643245214:targetgroup/expense-dev/fef3ede626719c95]
module.alb.aws_lb.this[0]: Still creating... [00m10s elapsed]
module.alb.aws_lb.this[0]: Still creating... [00m20s elapsed]
module.alb.aws_lb.this[0]: Still creating... [00m30s elapsed]
module.alb.aws_lb.this[0]: Still creating... [00m40s elapsed]
module.alb.aws_lb.this[0]: Still creating... [00m50s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m00s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m10s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m20s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m30s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m40s elapsed]
module.alb.aws_lb.this[0]: Still creating... [01m50s elapsed]
module.alb.aws_lb.this[0]: Still creating... [02m00s elapsed]
module.alb.aws_lb.this[0]: Still creating... [02m10s elapsed]
module.alb.aws_lb.this[0]: Still creating... [02m20s elapsed]
module.alb.aws_lb.this[0]: Still creating... [02m30s elapsed]
module.alb.aws_lb.this[0]: Creation complete after 2m37s [id=arn:aws:elasticloadbalancing:us-east-1:658643245214:loadbalancer/app/expense-dev-ingress-alb/c4cb1333b631dd61]
aws_route53_record.web_alb: Creating...
aws_lb_listener.https: Creating...
aws_lb_listener.https: Creation complete after 2s [id=arn:aws:elasticloadbalancing:us-east-1:658643245214:listener/app/expense-dev-ingress-alb/c4cb1333b631dd61/787466eeca6b1d7a]
aws_ssm_parameter.web_alb_listener_arn: Creating...
aws_lb_listener_rule.frontend: Creating...
aws_lb_listener_rule.frontend: Creation complete after 1s [id=arn:aws:elasticloadbalancing:us-east-1:658643245214:listener-rule/app/expense-dev-ingress-alb/c4cb1333b631dd61/787466eeca6b1d7a/138f8fd809690dd1]
aws_ssm_parameter.web_alb_listener_arn: Creation complete after 2s [id=/expense/dev/web_alb_listener_arn]
