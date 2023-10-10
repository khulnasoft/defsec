package state

import (
	"reflect"

	"github.com/khulnasoft/defsec/pkg/providers/aws"
	"github.com/khulnasoft/defsec/pkg/providers/azure"
	"github.com/khulnasoft/defsec/pkg/providers/cloudstack"
	"github.com/khulnasoft/defsec/pkg/providers/digitalocean"
	"github.com/khulnasoft/defsec/pkg/providers/github"
	"github.com/khulnasoft/defsec/pkg/providers/google"
	"github.com/khulnasoft/defsec/pkg/providers/kubernetes"
	"github.com/khulnasoft/defsec/pkg/providers/nifcloud"
	"github.com/khulnasoft/defsec/pkg/providers/openstack"
	"github.com/khulnasoft/defsec/pkg/providers/oracle"
	"github.com/khulnasoft/defsec/pkg/rego/convert"
)

type State struct {
	AWS          aws.AWS
	Azure        azure.Azure
	CloudStack   cloudstack.CloudStack
	DigitalOcean digitalocean.DigitalOcean
	GitHub       github.GitHub
	Google       google.Google
	Kubernetes   kubernetes.Kubernetes
	OpenStack    openstack.OpenStack
	Oracle       oracle.Oracle
	Nifcloud     nifcloud.Nifcloud
}

func (a *State) ToRego() interface{} {
	return convert.StructToRego(reflect.ValueOf(a))
}
