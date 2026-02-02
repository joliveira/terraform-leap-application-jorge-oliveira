output "applicant_name" {
  description = "The name of the very talented individual applying for the position"
  value       = var.applicant_name
}

output "position_applying_for" {
  description = "The exact position this application targets"
  value       = var.position_applying_for
}

output "application_metadata" {
  description = "Extra context because why not make it self-documenting"
  value = {
    applicant     = var.applicant_name
    github_handle = var.github_handle
    applied_at    = local.current_date
    location      = "${var.city}, ${var.state}"
    fun_fact      = var.fun_fact
  }
}
