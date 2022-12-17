{{- define "base.deployment" }}
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ include "base.fullname" . }}
  annotations:
    {{- toYaml .Values.deployment.annotations | nindent 4 }}
spec:
  selector:
    matchLabels:
      app: {{ include "base.fullname" . }}
  template:
    metadata:
      labels:
        app: {{ include "base.fullname" . }}
    spec:
      containers:
      - name: {{ .Chart.Name }}
        image: {{ .Values.image.registry }}/{{ default .Chart.Name .Values.image.name }}@{{ .Values.image.hash }}
        resources:
          {{- toYaml .Values.resources | nindent 10 }}
        ports:
        - containerPort: {{ .Values.service.port }}
{{- end -}}