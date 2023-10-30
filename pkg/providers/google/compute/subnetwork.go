package compute

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type SubNetwork struct {
	Metadata       defsecTypes.Metadata
	Name           defsecTypes.StringValue
	EnableFlowLogs defsecTypes.BoolValue
}
