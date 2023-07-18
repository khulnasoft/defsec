package rules

import (
	"github.com/khulnasoft/defsec/internal/rules"
	"github.com/khulnasoft/defsec/pkg/framework"
	"github.com/khulnasoft/defsec/pkg/scan"
)

func Register(rule scan.Rule, f scan.CheckFunc) rules.RegisteredRule {
	return rules.Register(rule, f)
}

func GetRegistered(fw ...framework.Framework) (registered []rules.RegisteredRule) {
	return rules.GetFrameworkRules(fw...)
}
