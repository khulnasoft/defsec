package documentdb

import (
	"github.com/khulnasoft/defsec/pkg/providers/aws/documentdb"
	"github.com/khulnasoft/defsec/pkg/scanners/cloudformation/parser"
)

// Adapt ...
func Adapt(cfFile parser.FileContext) documentdb.DocumentDB {
	return documentdb.DocumentDB{
		Clusters: getClusters(cfFile),
	}
}
