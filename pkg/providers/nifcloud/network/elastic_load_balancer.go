package network

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type ElasticLoadBalancer struct {
	Metadata          defsecTypes.Metadata
	NetworkInterfaces []NetworkInterface
	Listeners         []ElasticLoadBalancerListener
}

type ElasticLoadBalancerListener struct {
	Metadata defsecTypes.Metadata
	Protocol defsecTypes.StringValue
}
