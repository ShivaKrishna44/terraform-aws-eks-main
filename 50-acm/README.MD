Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_acm_certificate.expense will be created
  + resource "aws_acm_certificate" "expense" {
      + arn                       = (known after apply)
      + domain_name               = "*.vosukula.online"
      + domain_validation_options = [
          + {
              + domain_name           = "*.vosukula.online"
              + resource_record_name  = (known after apply)
              + resource_record_type  = (known after apply)
              + resource_record_value = (known after apply)
            },
        ]
      + id                        = (known after apply)
      + key_algorithm             = (known after apply)
      + not_after                 = (known after apply)
      + not_before                = (known after apply)
      + pending_renewal           = (known after apply)
      + region                    = "us-east-1"
      + renewal_eligibility       = (known after apply)
      + renewal_summary           = (known after apply)
      + status                    = (known after apply)
      + subject_alternative_names = [
          + "*.vosukula.online",
        ]
      + tags                      = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                  = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + type                      = (known after apply)
      + validation_emails         = (known after apply)
      + validation_method         = "DNS"

      + options (known after apply)
    }

  # aws_acm_certificate_validation.expense will be created
  + resource "aws_acm_certificate_validation" "expense" {
      + certificate_arn         = (known after apply)
      + id                      = (known after apply)
      + region                  = "us-east-1"
      + validation_record_fqdns = (known after apply)
    }

  # aws_route53_record.expense["*.vosukula.online"] will be created
  + resource "aws_route53_record" "expense" {
      + allow_overwrite = true
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = (known after apply)
      + records         = (known after apply)
      + ttl             = 60
      + type            = (known after apply)
      + zone_id         = "Z021448929NMXW4P65UQE"
    }

  # aws_ssm_parameter.ingress_alb_certificate_arn will be created
  + resource "aws_ssm_parameter" "ingress_alb_certificate_arn" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + has_value_wo   = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/ingress_alb_certificate_arn"
      + region         = "us-east-1"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + value_wo       = (write-only attribute)
      + version        = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_acm_certificate.expense will be created
  + resource "aws_acm_certificate" "expense" {
      + arn                       = (known after apply)
      + domain_name               = "*.vosukula.online"
      + domain_validation_options = [
          + {
              + domain_name           = "*.vosukula.online"
              + resource_record_name  = (known after apply)
              + resource_record_type  = (known after apply)
              + resource_record_value = (known after apply)
            },
        ]
      + id                        = (known after apply)
      + key_algorithm             = (known after apply)
      + not_after                 = (known after apply)
      + not_before                = (known after apply)
      + pending_renewal           = (known after apply)
      + region                    = "us-east-1"
      + renewal_eligibility       = (known after apply)
      + renewal_summary           = (known after apply)
      + status                    = (known after apply)
      + subject_alternative_names = [
          + "*.vosukula.online",
        ]
      + tags                      = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + tags_all                  = {
          + "Environment" = "dev"
          + "Name"        = "expense-dev"
          + "Project"     = "expense"
          + "Terraform"   = "true"
        }
      + type                      = (known after apply)
      + validation_emails         = (known after apply)
      + validation_method         = "DNS"

      + options (known after apply)
    }

  # aws_acm_certificate_validation.expense will be created
  + resource "aws_acm_certificate_validation" "expense" {
      + certificate_arn         = (known after apply)
      + id                      = (known after apply)
      + region                  = "us-east-1"
      + validation_record_fqdns = (known after apply)
    }

  # aws_route53_record.expense["*.vosukula.online"] will be created
  + resource "aws_route53_record" "expense" {
      + allow_overwrite = true
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = (known after apply)
      + records         = (known after apply)
      + ttl             = 60
      + type            = (known after apply)
      + zone_id         = "Z021448929NMXW4P65UQE"
    }

  # aws_ssm_parameter.ingress_alb_certificate_arn will be created
  + resource "aws_ssm_parameter" "ingress_alb_certificate_arn" {
      + arn            = (known after apply)
      + data_type      = (known after apply)
      + has_value_wo   = (known after apply)
      + id             = (known after apply)
      + insecure_value = (known after apply)
      + key_id         = (known after apply)
      + name           = "/expense/dev/ingress_alb_certificate_arn"
      + region         = "us-east-1"
      + tags_all       = (known after apply)
      + tier           = (known after apply)
      + type           = "String"
      + value          = (sensitive value)
      + value_wo       = (write-only attribute)
      + version        = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.
aws_acm_certificate.expense: Creating...
aws_acm_certificate.expense: Creation complete after 8s [id=arn:aws:acm:us-east-1:658643245214:certificate/ae807843-39ec-4ad1-b041-1f15d4b29d3b]
aws_ssm_parameter.ingress_alb_certificate_arn: Creating...
aws_route53_record.expense["*.vosukula.online"]: Creating...
aws_ssm_parameter.ingress_alb_certificate_arn: Creation complete after 1s [id=/expense/dev/ingress_alb_certificate_arn]
