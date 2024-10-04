// Version requirements or limitations 
// As well as location to define remote backend for storing state
terraform {

  required_providers {
    harness = {
      source = "harness/harness"
      version = "0.33.4" #"0.40.2"
    }
  }
}
