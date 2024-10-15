# Grafana-as-Code GitOps + ArgoCD 3>

Grafana sidecar will able to discover:
* Configure, Dashboards, Connectors, Alerts, DataSources via helm using Grafana sidecar

## This helm-chart can be used as Team independent way of deploying and updating their dashboards and alerts.

## Mission

Inspired by the original Grafana Helm-Chart, however this is striped version, that help's you do one thing well.

## What is supported by this helm-chart

* dashboards as code
* alerts
* contact points

## What you ned:

Enable grafana sidecar, configure labels for config_map discovery, part of the original grafana helm-chart.

```yaml
sidecar:
  alerts:
    enabled: true
    label: grafana_alerts
    labelValue: "true"
    searchNamespace: grafana
    watchMethod: WATCH
    resource: both
    reloadURL: "http://localhost:3000/api/admin/provisioning/alerting/reload"
    script: null
    skipReload: false
    initAlerts: false
    extraMounts: []
    sizeLimit: {}
  dashboards:
    enabled: true
    env: {}
    envValueFrom: {}
    SCProvider: true
    label: grafana_dashboards
    labelValue: "true"
    folder: /var/lib/grafana/dashboards
    defaultFolderName: imported
    searchNamespace: grafana
    watchMethod: WATCH
    resource: both
    folderAnnotation: grafana_folder
    reloadURL: "http://localhost:3000/api/admin/provisioning/dashboards/reload"
    script: null
    skipReload: false
    provider:
      name: infrastructure
      orgid: 1
      folder: /var/lib/grafana/dashboards/infrastructure
      folderUid: ''
      type: file
      disableDelete: false
      allowUiUpdates: true
      foldersFromFilesStructure: true
    extraMounts: []
    sizeLimit: {}
  datasources:
    enabled: true
    env: {}
    envValueFrom: {}
    label: grafana_datasource
    labelValue: "true"
    searchNamespace: grafana
    watchMethod: WATCH
    resource: both
    reloadURL: "http://localhost:3000/api/admin/provisioning/datasources/reload"
    script: null
    skipReload: false
    initDatasources: false
    sizeLimit: {}
```
