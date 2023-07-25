variable "access_key" {
    description = "access key to jerry acc"
}

variable "secret_key" {
    description = "secret eky to jerry acc"
}

variable "region" {
    description = "region of the machine"
}

variable "availability_zone1" {
  description = "AZ 1st pref."
}

variable "availability_zone2" {
  description = "AZ 2nd pref."
}

variable "availability_zone3" {
  description = "AZ 3rd pref."
}

variable "cidr_blockvpc" {
    description = "cidr of vpc"
}

variable "cidr_blockpublic1" {
    description = "cidr of pub subnet"
}

variable "cidr_blockpublic2" {
    description = "cidr of pub subnet"
}


variable "cidr_blockprivate" {
        description = "cidr of private subnet"
}

variable "cidr_blockprivate2" {
        description = "cidr of private subnet 2"
}


variable "ami" {
}

variable "instance_type" {
  
}

variable "username" {
  
}

variable "password" {
  
}