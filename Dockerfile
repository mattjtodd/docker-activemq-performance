FROM alpine:3.5

WORKDIR /work

COPY pom.xml ./

RUN set -ex && \
  apk update && \
  apk add \
    bash \
    openjdk8 \
    maven \
    procps

RUN set -ex && \
  mkdir -p src/{main,test}/{java,resources} && \
  mvn clean dependency:go-offline



