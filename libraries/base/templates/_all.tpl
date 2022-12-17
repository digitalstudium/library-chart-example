{{- define "base.all" }}
{{- include "base.init" . }}
{{- include "base.deployment" . }}
{{- include "base.service" . }}
{{- end -}}