package lambda

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/lambda"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) lambda.Lambda {
	return lambda.Lambda{
		Functions: getFunctions(cfFile),
	}
}
