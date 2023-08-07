{{/*
Application repository
*/}}
{{- define "application.repository" -}}
{{- regexReplaceAll "\\W+" .Values.image.repository "-" }}
{{- end }}

{{/*
Application name: TODO max length "trunc 63"
*/}}
{{- define "application.name" -}}
{{- if .Values.nameOverride }}
{{- .Values.nameOverride }}
{{- else if .Values.namePrefix }}
{{- printf "%s-%s" .Values.namePrefix (include "application.repository" .) }}
{{- else }}
{{- include "application.repository" . }}
{{- end }}
{{- end }}

{{/*
Application version
*/}}
{{- define "application.version" -}}
{{- regexReplaceAll "\\W+" .Values.image.version "-" }}
{{- end }}

{{/*
Application fullname
*/}}
{{- define "application.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- printf "%s-%s" (include "application.name" .) (include "application.version" .) }}
{{- end }}
{{- end }}

{{/*
Application labels
*/}}
{{- define "application.labels" -}}
app.kubernetes.io/name: {{ include "application.name" . }}
app.kubernetes.io/instance: {{ include "application.repository" . }}
app.kubernetes.io/version: {{ .Values.image.version | quote }}
app.kubernetes.io/managed-by: hckops
{{- end }}
