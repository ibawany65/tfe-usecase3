terraform {
  backend "remote" {
    hostname = "tfe.partsunlimited-uswest-1.com"
    organization = "Partsunlimited"

    workspaces {
      prefix = "tfe-usecase3"
    }
  }
}