terraform {
  backend "gcs" {
    bucket = "<%= expansion('terraform-state-:PROJECT-:REGION-:ENV') %>" # expanded by terraspace IE: terraform-state-project-us-central1-dev
    prefix = "<%= expansion(':REGION/:ENV/:BUILD_DIR') %>" # expanded by terraspace IE: us-central1/dev/modules/vm
  }
}
