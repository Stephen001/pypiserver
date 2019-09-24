FROM pypiserver/pypiserver:v1.3.1

USER root
RUN apk add --no-cache apache2-utils

USER pypiserver
