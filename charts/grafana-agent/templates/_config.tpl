{{/*
Retrieve configMap name from the name of the chart or the ConfigMap the user
specified.
*/}}
{{- define "grafana-agent.config-map-daemonset.name" -}}
{{- if .Values.agent_daemonset.configMap.name -}}
{{- .Values.agent_daemonset.configMap.name }}
{{- else -}}
{{- include "grafana-agent.fullname" . }}-daemonset
{{- end }}
{{- end }}

{{- define "grafana-agent.config-map-deployment.name" -}}
{{- if .Values.agent_deployment.configMap.name -}}
{{- .Values.agent_deployment.configMap.name }}
{{- else -}}
{{- include "grafana-agent.fullname" . }}-deployment
{{- end }}
{{- end }}

{{- define "grafana-agent.config-map-statefulset.name" -}}
{{- if .Values.agent_statefulset.configMap.name -}}
{{- .Values.agent_statefulset.configMap.name }}
{{- else -}}
{{- include "grafana-agent.fullname" . }}-statefulset
{{- end }}
{{- end }}

{{/*
The name of the config file is the default or the key the user specified in the
ConfigMap.
*/}}
{{- define "grafana-agent.config-map-daemonset.key" -}}
{{- if .Values.agent_daemonset.configMap.key -}}
{{- .Values.agent_daemonset.configMap.key }}
{{- else if eq .Values.agent_daemonset.mode "flow" -}}
config.river
{{- else if eq .Values.agent_daemonset.mode "static" -}}
config.yaml
{{- end }}
{{- end }}

{{- define "grafana-agent.config-map-deployment.key" -}}
{{- if .Values.agent_deployment.configMap.key -}}
{{- .Values.agent_deployment.configMap.key }}
{{- else if eq .Values.agent_deployment.mode "flow" -}}
config.river
{{- else if eq .Values.agent_deployment.mode "static" -}}
config.yaml
{{- end }}
{{- end }}

{{- define "grafana-agent.config-map-statefulset.key" -}}
{{- if .Values.agent_statefulset.configMap.key -}}
{{- .Values.agent_statefulset.configMap.key }}
{{- else if eq .Values.agent_statefulset.mode "flow" -}}
config.river
{{- else if eq .Values.agent_statefulset.mode "static" -}}
config.yaml
{{- end }}
{{- end }}

