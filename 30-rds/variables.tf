variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z10366773K51S184GSJVZ"
}
 #"Id": "/hostedzone/Z10366773K51S184GSJVZ",
 #           "Name": "vosukula.online.",


variable "domain_name" {
    default = "vosukula.online"
}