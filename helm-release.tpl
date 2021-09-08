apiVersion: helm.fluxcd.io/v1
kind: HelmRelease
metadata:
  name: ${APP_NAME}
  namespace: ${NAMESPACE}
spec:
  releaseName: ${APP_NAME}
  chart:
    repository: ${CHART_REPOSITORY}
    name: ${CHART_NAME}
    version: ${CHART_VERSION}
  values:
    configMap:
      variables:
        GITLAB_PROJECT_ID: "${CI_PROJECT_ID}"
        GITLAB_URL: "${GITLAB_URL}"
        GITLAB_JOB_ID: "${GITLAB_JOB_ID}"
        GITLAB_PROJECT_NAME: "${CI_PROJECT_PATH}"
        GITLAB_PIPELINE_ID: "${CI_PIPELINE_ID}" 
        GITLAB_JOB_TOKEN: "${GITLAB_JOB_TOKEN}"