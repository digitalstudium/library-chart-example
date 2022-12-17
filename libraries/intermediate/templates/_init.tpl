{{- define "intermediate.init" }}
  {{- if .Values.intermediate -}}
    {{- $defaultValues := deepCopy .Values.intermediate -}}
    {{- $userValues := deepCopy (omit .Values "intermediate") -}}
    {{- $mergedValues := mustMergeOverwrite $defaultValues $userValues -}}
    {{- $_ := set . "Values" (deepCopy $mergedValues) -}}
  {{- end -}}
{{- end -}}