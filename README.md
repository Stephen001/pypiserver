# pypiserver

This is a small repo that extends [pypiserver](https://github.com/pypiserver/pypiserver) docker image with `apache2-utils` package which is needed to generate `.htpasswd` file for authentication. The `Jenkinsfile` is included to build and push the docker image to OpenShift docker registry.

