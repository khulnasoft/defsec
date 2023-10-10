package rdb

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type DBSecurityGroup struct {
	Metadata    defsecTypes.Metadata
	Description defsecTypes.StringValue
	CIDRs       []defsecTypes.StringValue
}
