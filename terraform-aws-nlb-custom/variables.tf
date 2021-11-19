# Work in progress
#
#
# 

variable "nlb_name" {
  type = string
}

variable "nlb_schemes" {
  type = string
  default = ["internet-facing"]
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
  variable "<variable_name_goes_here>"
      type    = list(string)
      
}
  # mandatory inputs
  
  variables
  
  nlb_name = var.nlb_name
  nlb_scheme = var.nlb_scheme
  nlb_listeners = var.nlb_listeners # should include at least one LoadBalancerProtocol (TCP | UPD) and  at least one LoadBalancerPort (port number, integer e.g. 443, 80 
  nlb_vpcid = var.nlb_vpcid
  nlb_subnet_ids = var.nlb_subnet_ids
  nlb_target_group = var.nlb_target_group #  TargetGroup with Name, Protocol/Port and type (Instance or <tba>)
  nlb_healt_chek_protocol = var.nlb_healthcheck_protocol
  
  # optional advanced healthcheck parameters
  nlb_health_check_port = var.nlb_healthcheck_port 
  nlb_health_check_healty_threshold = var.nlb_health_check_healty_threshold
  nlb_health_check_unhealty_threshold = var.nlb_health_check_unhealty_threshold
  nlb_health_check_timeout = var.nlb_health_check_timeout
  nlb_health_check_interval = var.nlb_health_check_interval 
  
  # mandatory inputs (cont.)
  nlb_registered_targets = var.nlb_registered_targets
  nlb_tags = var.nlb_tags
