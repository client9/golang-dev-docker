# A container for testing libinjection
FROM golang:alpine
MAINTAINER https://github.com/client9/golang-dev-docker

# git is only used for coveralls reporting
RUN apk add --update git make \
    && rm -f /var/cache/apk/*

# these are my standard testing / linting tools
RUN    go get -u github.com/golang/lint/golint \
    && go get -u golang.org/x/tools/cmd/goimports \
    && go get -u golang.org/x/tools/cmd/vet \
    && go get -u github.com/alecthomas/gometalinter \
    && go get -u github.com/client9/misspell/... \
    && go get -u github.com/mattn/goveralls \
    rm -f /go/src /go/pkg
    

