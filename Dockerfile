# A container for testing generic golang development
# https://hub.docker.com/_/golang/
FROM golang:1.7.0-alpine
MAINTAINER https://github.com/client9/golang-dev-docker

# cache buster
RUN echo 1457336153

# git is only used for coveralls reporting
RUN apk add --no-cache git make

# these are my standard testing / linting tools
RUN /bin/true \
    && go get -u github.com/golang/lint/golint \
    && go get -u golang.org/x/tools/cmd/goimports \
    && go get -u golang.org/x/tools/cmd/vet \
    && go get -u github.com/alecthomas/gometalinter \
    && go get -u github.com/client9/misspell/cmd/misspell \
    && go get -u github.com/mattn/goveralls \
    && rm -rf /go/src /go/pkg


