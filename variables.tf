variable "applicant_name" {
  description = "Full name of the person applying"
  type        = string
}

variable "position_applying_for" {
  description = "Job Title Being applied for"
  type        = string
}

variable "github_handle" {
  description = "GitHub.com handle"
  type        = string
}

variable "fun_fact" {
  description = "Fun fact about applicant"
  type        = string
}

variable "city" {
  description = "City Location"
  type        = string
}

variable "state" {
  description = "State of applicant"
  type        = string
  validation {
    #All the states i've lived in
    condition = contains([
      "NY",
      "MA",
      "IN",
      "NV",
      "CA"
    ], var.state)

    error_message = "You have not supplied a state that applicant has lived in"
  }
}
