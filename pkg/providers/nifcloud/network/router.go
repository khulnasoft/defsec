package network

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type Router struct {
	Metadata          defsecTypes.Metadata
	SecurityGroup     defsecTypes.StringValue
	NetworkInterfaces []NetworkInterface
}
