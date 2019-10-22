variable "sg_id" {
  description = "ID of the SG to attach the rule to"
}

variable "cidr_blocks" {
  description = "List of CIDR blocks for the rule"
  type = "list"
}

variable "protocol" {
  description = "Protocol for the rule (TCP, ICMP, UDP, etc...)"
}

variable "to_port" {
  description = "Destination port"
}

variable "from_port" {
  description = "Source port"
}

variable "type" {
  description = "Type of rule, ingress or egress"
}