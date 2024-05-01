data "tfe_outputs" "vpc"  {
    config = {
        organization = "Bobomuradova"
        workspaces = {
            name = "vpc" 
        }
    }
}


output all {
    value = data.tfe_outputs.vpc.outputs
}