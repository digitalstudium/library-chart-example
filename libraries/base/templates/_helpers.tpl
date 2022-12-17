{{- define "base.fullname" }}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end -}}