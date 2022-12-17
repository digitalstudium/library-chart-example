{{- define "base.init" }}
  {{- if .Values.base -}}
    {{- $defaultValues := deepCopy .Values.base -}}
    {{- $userValues := deepCopy (omit .Values "base") -}}
    {{- $mergedValues := mustMergeOverwrite $defaultValues $userValues -}}
    {{- $_ := set . "Values" (deepCopy $mergedValues) -}}
  {{- end -}}
{{- end -}}