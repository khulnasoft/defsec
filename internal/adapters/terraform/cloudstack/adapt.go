package cloudstack

import (
	"github.com/khulnasoft/defsec/internal/adapters/terraform/cloudstack/compute"
	"github.com/khulnasoft/defsec/pkg/providers/cloudstack"
	"github.com/khulnasoft/defsec/pkg/terraform"
)

func Adapt(modules terraform.Modules) cloudstack.CloudStack {
	return cloudstack.CloudStack{
		Compute: compute.Adapt(modules),
	}
}
