# Work in progress
#
#
# example of variables.tf content:
#
#  variable "<variable_name_goes_here>" {
#      description = "The variable description goes in here"
#      type    = list(string)
#      
#}
#

variable "nlb_name" {
  description = "The name of Network Load Balancer being created"
  type = string
  default     = "example-nlb"
}

variable "nlb_scheme" {
  description = "The selected scheme of Network Load Balancer being crerated"
  type = string
  default = ["internet-facing"]
}

variable "nlb_listeners" {
  description = "One or more NLB listeners with their respective Protocol and Port"
  type = list(object({
    protocol = string
    port = number
  })
  default = [
    {
      protocol = "tcp"
      port = 443
    }
  ]
}
 
variable "nlb_vpcid" {
  description = "The Id of VPC that will be used in Network Load Balancer  being created as target"
  type = string
}
  
variable "nlb_subnet_ids" {
  description = "The list of id(s) of subnets that will be used in Network Load Balancer's target groups"
  type        = list(string)
}
  
variable "nlb_target_group" {
  description = "list that contains the target group Name, Protocol, Port and Type"
  type = = list(object({
    name = string
    protocol = string
    port = number
    type = string
  })
    default = [
    { 
      protocol = "tcp"
      port = 443
      type = "instance"
    }
  ]








#variable "docker_ports" {
#  description = " hjjkkkkllls "
#  type = list(object({
#    internal = number
#    external = number
#    protocol = string
#  }))
#  default = [
#    {
#      internal = 8300
#      external = 8300
#      protocol = "tcp"
#    }
#  ]
#  }
#
#   type        = list(string)
#   default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
#
# References to extenal module's variables and lists from other module:
# vpc_security_group_ids = [module.vpc.default_security_group_id]
# subnet_id              = module.vpc.public_subnets[0]

  
  # mandatory inputs
  
#  variables
  
  #* nlb_name = var.nlb_name
  #* nlb_scheme = var.nlb_scheme
  #* nlb_listeners = var.nlb_listeners # should include at least one LoadBalancerProtocol (TCP | UPD) and  at least one LoadBalancerPort (port number, integer e.g. 443, 80 
  #* nlb_vpcid = var.nlb_vpcid
  #* nlb_subnet_ids = var.nlb_subnet_ids
  #*  nlb_target_group = var.nlb_target_group #  TargetGroup with Name, Protocol/Port and type (Instance or <tba>)
  #nlb_healt_chek_protocol = var.nlb_healthcheck_protocol
  
  # optional advanced healthcheck parameters
    # nlb_health_check_port = var.nlb_healthcheck_port 
    # nlb_health_check_healty_threshold = var.nlb_health_check_healty_threshold
    # nlb_health_check_unhealty_threshold = var.nlb_health_check_unhealty_threshold
    # nlb_health_check_timeout = var.nlb_health_check_timeout
    # nlb_health_check_interval = var.nlb_health_check_interval 
  
  # mandatory inputs (cont.)
  # nlb_registered_targets = var.nlb_registered_targets
  # nlb_tags = var.nlb_tags
