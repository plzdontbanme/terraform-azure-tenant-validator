output "checked" {
    description = "An output that always returns `true`, but isn't available until the expected condition has been checked. This is to be used for dependency chaining."
    value = module.assertion.checked
}
