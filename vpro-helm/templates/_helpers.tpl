{{- define "app.fullname" -}}
{{ .Values.app.appname }}-{{ .Release.Name }}
{{- end }}

{{- define "db.fullname" -}}
{{ .Values.db.dbname }}-{{ .Release.Name }}
{{- end }}

{{- define "mc.fullname" -}}
{{ .Values.mc.mcname }}-{{ .Release.Name }}
{{- end }}

{{- define "rmq.fullname" -}}
{{ .Values.rmq.rmqname }}-{{ .Release.Name }}
{{- end }}

{{- define "rmq.svcname" -}}
{{ .Values.rmq.rmqSvc }}-{{ .Release.Name }}
{{- end }}



