package kinesis

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/kinesis"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) kinesis.Kinesis {
	return kinesis.Kinesis{
		Streams: getStreams(cfFile),
	}
}
