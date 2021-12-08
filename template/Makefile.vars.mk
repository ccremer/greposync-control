{{- template "comment" . }}
# These are some common variables for Make

BIN_FILENAME ?= {{ .Metadata.Repository.Name }}

{{- if .Values.features.makeDockerBuild.enabled }}

# Image URL to use all building/pushing image targets
IMG_TAG ?= latest
LOCAL_IMG ?= local.dev/{{ .Metadata.Repository.Namespace }}/{{ .Metadata.Repository.Name }}:$(IMG_TAG)
{{- end }}
