{{/*
 Generate DataSources config map data
 */}}
{{- define "grafana.configDataSource" -}}
{{- $files := .Files }}
{{- $root := . -}}
{{- range $key, $value := .Values.datasources -}}
{{ $key }}: |
  {{- tpl (toYaml $value | nindent 2) $root }}
{{- end -}}
{{- end -}}

{{/*
 Generate Plugins config map data

{{- define "grafana.configPlugins" -}}
{{- with .Values.plugins -}}
plugins: {{ join "," . }}
{{- end -}}
{{- end -}}
*/}}

{{- define "grafana.configPlugins_test" -}}
{{- $files := .Files }}
{{- $root := . -}}
plugins.yaml: |
  plugins:
  {{- tpl (toYaml .Values.plugins | nindent 4) $root }}
{{- end -}}
