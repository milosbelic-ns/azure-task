{{/* acr.dockerconfigjson */}}
{{- define "acr.dockerconfigjson" -}}
{{- $auth := printf "%s:%s" .Values.acr.username .Values.acr.password | b64enc -}}
{
  "auths": {
    "{{ .Values.acr.server }}": {
      "username": "{{ .Values.acr.username }}",
      "password": "{{ .Values.acr.password }}",
      "auth": "{{ $auth }}"
    }
  }
}
{{- end -}}