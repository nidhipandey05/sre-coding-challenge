package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAwsS3(t *testing.T) {
	t.Parallel()
	// Input for module testing
	var bucket_name = "sre-challenge-s3"
	var key = "demo"
	var file_source     = "files/challenge.txt"
	var email      = "nidhi_pandey@epam.com"

	expectedName := "sre-challenge-s3"

	// Configure terraform directory and inputs

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../",
		Vars: map[string]interface{}{
			"bucket_name": bucket_name,
			"key":         key,
			"file_source": file_source,
			"email":email,
		},
	})

	terraform.Init(t, terraformOptions)

	// destory after integration testing
	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)
	s3bucketNameDeployed := terraform.Output(t, terraformOptions, "s3_bucket")

	//check if bucket exists

	t.Run("s3", func(t *testing.T) {
		assert.Equal(t, expectedName, s3bucketNameDeployed)
	})

}
