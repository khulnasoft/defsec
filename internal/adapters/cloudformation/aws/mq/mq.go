package mq

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/mq"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) mq.MQ {
	return mq.MQ{
		Brokers: getBrokers(cfFile),
	}
}
