variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "catalogue", "user", "cart", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z05780802EPAPCZ7Q9WUE"
}

variable "domain_name" {
    default = "109v.store"
} 