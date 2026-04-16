apiVersion: v1
kind: Service
metadata:
  name: {{ .Values.pharmacy.service.name }}
  namespace: {{ .Values.global.namespaces.backend }}
  labels:
    app: {{ .Values.name }}
    tier: backend
spec:
  type: ClusterIP
  selector:
    app: {{ .Values.name }}
    tier: backend
  ports:
    - port: {{ .Values.service.port }}
      targetPort: {{ .Values.containerPort }}
      protocol: TCP
      name: http
