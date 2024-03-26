# Results
test {
  rules = {
    main = true
  }
}

# Mocks
mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass-default-tags.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-pass-default-tags.sentinel"
  }
}

# Functions
module "tfplan-functions" {
  source = "../../functions/tfplan-functions.sentinel"
}

module "aws-functions" {
  source = "../../functions/aws-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../functions/tfconfig-functions.sentinel"
}

