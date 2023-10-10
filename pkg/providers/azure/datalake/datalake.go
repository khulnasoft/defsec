package datalake

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type DataLake struct {
	Stores []Store
}

type Store struct {
	Metadata         defsecTypes.Metadata
	EnableEncryption defsecTypes.BoolValue
}
