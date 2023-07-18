package sslcertificate

import (
	"github.com/khulnasoft/defsec/pkg/providers/nifcloud/sslcertificate"
	"github.com/khulnasoft/defsec/pkg/terraform"
)

func Adapt(modules terraform.Modules) sslcertificate.SSLCertificate {
	return sslcertificate.SSLCertificate{
		ServerCertificates: adaptServerCertificates(modules),
	}
}
