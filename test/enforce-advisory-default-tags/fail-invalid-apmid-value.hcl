# Results
test {
  rules = {
    main = false
  }
}

# Mocks
mock "tfplan/v2" {
  module {
    source = "mock-tfplan-fail-invalid-apmid-value.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail-invalid-apmid-value.sentinel"
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