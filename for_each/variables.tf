/* variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql   = "t3.small"
    }
}
*/

# This is should be converted into set
variable "instances" {
    type = list
    default = ["user", "redis"]
}

variable "zone_id" {
    default = "Z05780802EPAPCZ7Q9WUE"
}

variable "domain_name" {
    default = "109v.store"
}