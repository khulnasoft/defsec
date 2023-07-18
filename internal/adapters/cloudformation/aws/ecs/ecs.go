package ecs

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/ecs"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) ecs.ECS {
	return ecs.ECS{
		Clusters:        getClusters(cfFile),
		TaskDefinitions: getTaskDefinitions(cfFile),
	}
}
