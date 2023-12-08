package nas

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type NASInstance struct {
	Metadata  defsecTypes.Metadata
	NetworkID defsecTypes.StringValue
}
