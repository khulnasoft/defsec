package config

import (
	defsecTypes "github.com/khulnasoft/defsec/pkg/types"
)

type Config struct {
	ConfigurationAggregrator ConfigurationAggregrator
}

type ConfigurationAggregrator struct {
	Metadata         defsecTypes.Metadata
	SourceAllRegions defsecTypes.BoolValue
}
