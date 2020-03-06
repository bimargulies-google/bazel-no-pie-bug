FROM alpine
ADD . /
RUN apk update
RUN apk add make build-base tzdata git bash curl
RUN apk add bazel --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN /build.sh
