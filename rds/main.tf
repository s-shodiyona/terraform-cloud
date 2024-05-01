data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "Bobomuradova"
    workspaces = {
      name = "vpc"
    }
  }
}



output all {
    value = data.terraform_remote_state.vpc.outputs
}