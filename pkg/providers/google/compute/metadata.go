package compute

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type ProjectMetadata struct {
	Metadata      defsecTypes.Metadata
	EnableOSLogin defsecTypes.BoolValue
}
