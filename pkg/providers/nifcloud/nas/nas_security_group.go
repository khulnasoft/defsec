package nas

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type NASSecurityGroup struct {
	Metadata    defsecTypes.Metadata
	Description defsecTypes.StringValue
	CIDRs       []defsecTypes.StringValue
}
