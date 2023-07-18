package cloudfront

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/cloudfront"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) cloudfront.Cloudfront {
	return cloudfront.Cloudfront{
		Distributions: getDistributions(cfFile),
	}
}
