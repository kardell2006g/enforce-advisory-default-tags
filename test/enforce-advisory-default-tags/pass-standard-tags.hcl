# Results
test {
  rules = {
    main = true
  }
}

# Mocks
mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass-standard-tags.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-pass-standard-tags.sentinel"
  }
}

# Functions
module "tfplan-functions" {
  source = "../../functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "../../functions/aws-functions.sentinel"
}