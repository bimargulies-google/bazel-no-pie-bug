FROM alpine
ADD . /
RUN apk update && apk add make build-base tzdata git bash curl g++
RUN apk add bazel --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN /build.sh
