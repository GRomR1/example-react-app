# NGINX based container with scripts for download builded artifacts from GitLab CI/CD 

## Sources
  - https://github.com/bitnami/bitnami-docker-nginx

## Publish chart to repo

Get the latest repo version:
```
helm search repo react-app --version \* -o json | jq -r  '.[].version'
```

Package the chart directory into tgz-archive with a chart version, i.e. `0.0.1` (increment the last value)
```
helm package ./helm-chart/ --version=0.0.1
```
>  `--version` - a chart version, should be implement after a every big modification of the chart sources

Add `chartmuseum` repo
```
helm repo add chartmuseum https://chartmuseum.example.com
```

Push the archive to `chartmuseum` repo
```
helm push --force react-app-0.0.1.tgz chartmuseum
```