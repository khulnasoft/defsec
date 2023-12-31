package sam

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type SimpleTable struct {
	Metadata         defsecTypes.Metadata
	TableName        defsecTypes.StringValue
	SSESpecification SSESpecification
}

type SSESpecification struct {
	Metadata defsecTypes.Metadata

	Enabled        defsecTypes.BoolValue
	KMSMasterKeyID defsecTypes.StringValue
}
