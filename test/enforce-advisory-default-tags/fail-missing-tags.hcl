# Results
test {
  rules = {
    main = false
  }
}

# Mocks
mock "tfplan/v2" {
  module {
    source = "mock-tfplan-fail-missing-tags.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail-missing-tags.sentinel"
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