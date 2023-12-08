package efs

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type EFS struct {
	FileSystems []FileSystem
}

type FileSystem struct {
	Metadata  defsecTypes.Metadata
	Encrypted defsecTypes.BoolValue
}
