# React App: build and deploy with Docker, Kubernetes and Gitlab CI/CD

An example of compiling react app with Gitlab CI/CD, store results as artifacts, and deploy the builded application in Kubernetes. For deploing app uses [HelmRelease](helm-release.tpl) manifest and predifined helm-chart.

## Local build (for tests)

> Requirements: node, yarn

1. Build from sources:
```
export REACT_APP_APP_NAME="example-react-app"
export REACT_APP_APP_VERSION="v1.0.0 - $(git log -1 --format=%h --decorate)"

yarn install --silent --production
yarn run build
```

The generated code will be pushed into `./build` folder

2. Run with docker-compose
```
docker-compose up bitnami
```

3. Open in browser - [http://localhost:8083/](http://localhost:8083/)
