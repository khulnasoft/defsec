package elasticsearch

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/elasticsearch"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) elasticsearch.Elasticsearch {
	return elasticsearch.Elasticsearch{
		Domains: getDomains(cfFile),
	}
}
