##project ##
variable "project_name" {
    type = string

  
}
variable "environment" {
    type = string
    default = "dev"
  
}

variable "common_tags" {
    type = map
  
}


##vpc##

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "vpc_tags" {
    type = map
    default = {}
  
}

variable "igw_tags" {
    type = map  
    default = {}
}


### Public Subnet ####
variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}

### Private Subnet ####
variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}

### DataBase Subnet ####
variable "dataBase_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.dataBase_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
    }
}

variable "dataBase_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

##nat gateway_tags##
variable "nat_gateway_tags" {
    type = map
    default = {}
  
}

##public route table 

variable "public_route_table_tags" {
    type = map
    default = {}
  
}

variable "private_route_table_tags" {
    type = map
    default = {}
  
}

variable "database_route_table_tags" {
    type = map
    default = {}
  
}


#### Peering ####
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}