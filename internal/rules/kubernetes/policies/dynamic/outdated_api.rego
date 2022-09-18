package defsec.kubernetes.KSV107

import data.lib.kubernetes
import data.lib.result
import data.lib.utils

__rego_metadata__ := {
	"id": "KSV107",
	"avd_id": "AVD-KSV-0107",
	"title": "Evaluate k8s deprecated and removed APIs",
	"short_code": "evaluate-k8s-deprecated-removed-apis",
	"severity": "HIGH",
	"description": sprintf("apiVersion '%s' and kind '%s' has been deprecated on: '%s' and planned for removal on:'%s'", [input.apiVersion, input.kind, recommendedVersions[input.apiVersion][input.kind].deprecation_version, recommendedVersions[input.apiVersion][input.kind].removed_version]),
	"recommended_actions": sprintf("It recommended to move to the new replacement API:'%s'", [recommendedVersions[input.apiVersion][input.kind].replacement_version]),
	"url": sprintf("%s", [recommendedVersions[input.apiVersion][input.kind].ref]),
}

__rego_input__ := {
	"combine": false,
	"selector": [{"type": "kubernetes"}],
}

recommendedVersions := {"admission.k8s.io/v1beta1": {"AdmissionReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/admission/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "admission.k8s.io.v1.AdmissionReview"}}, "admissionregistration.k8s.io/v1beta1": {"MutatingWebhookConfiguration": {"deprecation_version": "v1.16", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/admissionregistration/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "admissionregistration.k8s.io.v1.MutatingWebhookConfiguration"}, "MutatingWebhookConfigurationList": {"deprecation_version": "v1.16", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/admissionregistration/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "admissionregistration.k8s.io.v1.MutatingWebhookConfigurationList"}, "ValidatingWebhookConfiguration": {"deprecation_version": "v1.16", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/admissionregistration/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "admissionregistration.k8s.io.v1.ValidatingWebhookConfiguration"}, "ValidatingWebhookConfigurationList": {"deprecation_version": "v1.16", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/admissionregistration/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "admissionregistration.k8s.io.v1.ValidatingWebhookConfigurationList"}}, "apps/v1beta1": {"DaemonSet": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DaemonSet"}, "DaemonSetList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DaemonSetList"}, "Deployment": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.Deployment"}, "DeploymentList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DeploymentList"}, "DeploymentRollback": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16"}, "Ingress": {"deprecation_version": "v1.14", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.Ingress"}, "IngressList": {"deprecation_version": "v1.14", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.IngressList"}, "NetworkPolicy": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "networking.k8s.io.v1.NetworkPolicy"}, "NetworkPolicyList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "networking.k8s.io.v1.NetworkPolicyList"}, "PodSecurityPolicy": {"deprecation_version": "v1.11", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "policy.v1beta1.PodSecurityPolicy"}, "PodSecurityPolicyList": {"deprecation_version": "v1.11", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "policy.v1beta1.PodSecurityPolicyList"}, "ReplicaSet": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ReplicaSet"}, "ReplicaSetList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ReplicaSetList"}, "Scale": {"deprecation_version": "v1.2", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/extensions/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16"}}, "authentication.k8s.io/v1beta1": {"TokenReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authentication/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "authentication.k8s.io.v1.TokenReview"}}, "authentication/v1alpha1": {"SelfSubjectReview": {"deprecation_version": "v1.28", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authentication/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.31"}}, "authorization.k8s.io/v1beta1": {"LocalSubjectAccessReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authorization/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "authorization.k8s.io.v1.LocalSubjectAccessReview"}, "SelfSubjectAccessReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authorization/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "authorization.k8s.io.v1.SelfSubjectAccessReview"}, "SelfSubjectRulesReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authorization/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "authorization.k8s.io.v1.SelfSubjectRulesReview"}, "SubjectAccessReview": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/authorization/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "authorization.k8s.io.v1.SubjectAccessReview"}}, "autoscaling/v1beta1": {"ControllerRevision": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ControllerRevision"}, "ControllerRevisionList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ControllerRevisionList"}, "Deployment": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.Deployment"}, "DeploymentList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DeploymentList"}, "DeploymentRollback": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DeploymentRollback"}, "Scale": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "autoscaling.v1.Scale"}, "StatefulSet": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.StatefulSet"}, "StatefulSetList": {"deprecation_version": "v1.8", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.StatefulSetList"}}, "autoscaling/v1beta2": {"ControllerRevision": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ControllerRevision"}, "ControllerRevisionList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ControllerRevisionList"}, "DaemonSet": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DaemonSet"}, "DaemonSetList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DaemonSetList"}, "Deployment": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.Deployment"}, "DeploymentList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.DeploymentList"}, "ReplicaSet": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ReplicaSet"}, "ReplicaSetList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.ReplicaSetList"}, "Scale": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "autoscaling.v1.Scale"}, "StatefulSet": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.StatefulSet"}, "StatefulSetList": {"deprecation_version": "v1.9", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/apps/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.16", "replacement_version": "apps.v1.StatefulSetList"}}, "autoscaling/v2beta1": {"HorizontalPodAutoscaler": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/autoscaling/v2beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "autoscaling.v2.HorizontalPodAutoscaler"}, "HorizontalPodAutoscalerList": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/autoscaling/v2beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "autoscaling.v2beta2.HorizontalPodAutoscalerList"}}, "autoscaling/v2beta2": {"HorizontalPodAutoscaler": {"deprecation_version": "v1.23", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/autoscaling/v2beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.26", "replacement_version": "autoscaling.v2.HorizontalPodAutoscaler"}, "HorizontalPodAutoscalerList": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/autoscaling/v2beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}}, "batch/v1beta1": {"CronJob": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/batch/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "batch.v1.CronJob"}, "CronJobList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/batch/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "batch.v1.CronJobList"}, "JobTemplate": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/batch/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}}, "certificates.k8s.io/v1beta1": {"CertificateSigningRequest": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/certificates/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "certificates.k8s.io.v1.CertificateSigningRequest"}, "CertificateSigningRequestList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/certificates/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "certificates.k8s.io.v1.CertificateSigningRequestList"}}, "coordination.k8s.io/v1beta1": {"Lease": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/coordination/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "coordination.k8s.io.v1.Lease"}, "LeaseList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/coordination/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "coordination.k8s.io.v1.LeaseList"}}, "discovery.k8s.io/v1beta1": {"EndpointSlice": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/discovery/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "discovery.k8s.io.v1.EndpointSlice"}, "EndpointSliceList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/discovery/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "discovery.k8s.io.v1.EndpointSlice"}}, "events/v1beta1": {"Event": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/events/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}, "EventList": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/events/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}}, "flowcontrol.apiserver.k8s.io/v1alpha1": {"FlowSchema": {"deprecation_version": "v1.20", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.21", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.FlowSchema"}, "FlowSchemaList": {"deprecation_version": "v1.20", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.21", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.FlowSchemaList"}, "PriorityLevelConfiguration": {"deprecation_version": "v1.20", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.21", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.PriorityLevelConfiguration"}, "PriorityLevelConfigurationList": {"deprecation_version": "v1.20", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.21", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.PriorityLevelConfigurationList"}}, "flowcontrol.apiserver.k8s.io/v1beta1": {"FlowSchema": {"deprecation_version": "v1.23", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.26", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.FlowSchema"}, "FlowSchemaList": {"deprecation_version": "v1.23", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.26", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.FlowSchemaList"}, "PriorityLevelConfiguration": {"deprecation_version": "v1.23", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.26", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.PriorityLevelConfiguration"}, "PriorityLevelConfigurationList": {"deprecation_version": "v1.23", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.26", "replacement_version": "flowcontrol.apiserver.k8s.io.v1beta2.PriorityLevelConfigurationList"}}, "flowcontrol/v1beta2": {"FlowSchema": {"deprecation_version": "v1.26", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.29"}, "FlowSchemaList": {"deprecation_version": "v1.26", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.29"}, "PriorityLevelConfiguration": {"deprecation_version": "v1.26", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.29"}, "PriorityLevelConfigurationList": {"deprecation_version": "v1.26", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/flowcontrol/v1beta2/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.29"}}, "networking.k8s.io/v1beta1": {"Ingress": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.Ingress"}, "IngressClass": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.IngressClassList"}, "IngressClassList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.IngressClassList"}, "IngressList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "networking.k8s.io.v1.IngressList"}}, "networking/v1alpha1": {"ClusterCIDR": {"deprecation_version": "v1.28", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.31"}, "ClusterCIDRList": {"deprecation_version": "v1.28", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/networking/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.31"}}, "node/v1beta1": {"RuntimeClass": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/node/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}, "RuntimeClassList": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/node/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}}, "policy/v1beta1": {"Eviction": {"deprecation_version": "v1.22", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/policy/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}, "PodDisruptionBudget": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/policy/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "policy.v1.PodDisruptionBudget"}, "PodDisruptionBudgetList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/policy/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25", "replacement_version": "policy.v1.PodDisruptionBudgetList"}, "PodSecurityPolicy": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/policy/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}, "PodSecurityPolicyList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/policy/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.25"}}, "rbac.authorization.k8s.io/v1beta1": {"ClusterRole": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.ClusterRole"}, "ClusterRoleBinding": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.ClusterRoleBinding"}, "ClusterRoleBindingList": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.ClusterRoleBindingList"}, "ClusterRoleList": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.ClusterRoleList"}, "Role": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.Role"}, "RoleBinding": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.RoleBinding"}, "RoleBindingList": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.RoleBindingList"}, "RoleList": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/rbac/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "rbac.authorization.k8s.io.v1.RoleList"}}, "scheduling.k8s.io/v1beta1": {"PriorityClass": {"deprecation_version": "v1.14", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/scheduling/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "scheduling.k8s.io.v1.PriorityClass"}, "PriorityClassList": {"deprecation_version": "v1.14", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/scheduling/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "scheduling.k8s.io.v1.PriorityClassList"}}, "storage.k8s.io/v1alpha1": {"CSIStorageCapacity": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.24", "replacement_version": "storage.k8s.io.v1beta1.CSIStorageCapacity"}, "CSIStorageCapacityList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.24", "replacement_version": "storage.k8s.io.v1beta1.CSIStorageCapacityList"}, "VolumeAttachment": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.24", "replacement_version": "storage.k8s.io.v1.VolumeAttachment"}, "VolumeAttachmentList": {"deprecation_version": "v1.21", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1alpha1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.24", "replacement_version": "storage.k8s.io.v1.VolumeAttachmentList"}}, "storage.k8s.io/v1beta1": {"CSIDriver": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.CSIDriver"}, "CSIDriverList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.CSIDriverList"}, "CSINode": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.CSINode"}, "CSINodeList": {"deprecation_version": "v1.17", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.CSINode"}, "CSIStorageCapacity": {"deprecation_version": "v1.24", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.27", "replacement_version": "storage.k8s.io.v1.CSIStorageCapacity"}, "CSIStorageCapacityList": {"deprecation_version": "v1.24", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.27", "replacement_version": "storage.k8s.io.v1.CSIStorageCapacityList"}, "StorageClass": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.StorageClass"}, "StorageClassList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.StorageClassList"}, "VolumeAttachment": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.VolumeAttachment"}, "VolumeAttachmentList": {"deprecation_version": "v1.19", "ref": "https://github.com/kubernetes/kubernetes/tree/master/staging/src/k8s.io/api/storage/v1beta1/zz_generated.prerelease-lifecycle.go", "removed_version": "v1.22", "replacement_version": "storage.k8s.io.v1.VolumeAttachmentList"}}}

deny[res] {
	_ = recommendedVersions[input.apiVersion][input.kind]
	msg := sprintf("apiVersion '%s' and kind ‘%s' should be replaced with the new API ‘%s'", [input.apiVersion, input.kind, recommendedVersions[input.apiVersion][input.kind].replacement_version])
	res := result.new(msg, {"__defsec_metadata": {"startline": 1, "endline": 5}})
}
