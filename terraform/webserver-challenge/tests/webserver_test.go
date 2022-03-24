package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAwsEC2(t *testing.T) {
	t.Parallel()
	// Input for module testing
	var vpc_cidr = "10.0.0.0/16"
	var	availability_zone = "us-east-1a"
	var	pub_snet_cidr     = "10.0.0.0/24"
	var	pr_snet_cidr      = "10.0.128.0/24"
	var	ami            = "ami-04505e74c0741db8d"
	var	instance_type  = "t2.micro"
	expectedType := "t2.micro"

	// Configure terraform directory and inputs

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../",
		Vars: map[string]interface{}{
			"vpc_cidr" : vpc_cidr,
			"availability_zone" : availability_zone,
			"pub_snet_cidr"     : pub_snet_cidr,
			"pr_snet_cidr"      : pr_snet_cidr,
			"ami"            : ami,
			"instance_type"  : instance_type,
		},
	})

	terraform.Init(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)
	webservertype := terraform.Output(t, terraformOptions, "webserver_instance_type")

	//check if bucket exists

	t.Run("webserver", func(t *testing.T) {
		assert.Equal(t, expectedType, webservertype)
	})

}
