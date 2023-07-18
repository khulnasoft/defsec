package dns

import (
	"github.com/khulnasoft/defsec/pkg/providers/nifcloud/dns"
	"github.com/khulnasoft/defsec/pkg/terraform"
)

func Adapt(modules terraform.Modules) dns.DNS {
	return dns.DNS{
		Records: adaptRecords(modules),
	}
}
