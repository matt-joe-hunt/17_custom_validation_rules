variable "ami_id" {
  type = string

  validation {
    condition = (
      length(var.ami_id) > 4 &&
      substr(var.ami_id, 0, 4) == "ami-"
    )
    error_message = "The ami_id value must start with \"ami-\"."
  }
}

variable "instance_type" {
  type = string

  validation {
    condition = (
      length(var.instance_type) > 3 &&
      substr(var.instance_type, 0, 3) == "t3."
    )
    error_message = "The instance_type value must start with \"t3.\"."
  }
}