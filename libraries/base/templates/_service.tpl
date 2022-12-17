{{- define "base.service" }}
---
apiVersion: v1
kind: Service
metadata:
  name: {{ include "base.fullname" . }}
spec:
  type: ClusterIP
  ports:
  - port: {{ .Values.service.port }}
    targetPort: {{ .Values.service.port }}
    protocol: TCP
  selector:
    app: {{ include "base.fullname" . }}
{{- end -}}