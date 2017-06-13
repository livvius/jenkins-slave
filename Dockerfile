FROM jenkinsci/jnlp-slave
USER root
RUN apk add --no-cache docker
