#!/bin/sh
set -eo pipefail

export GLIDE_VERSION="0.7.2"
export GO15VENDOREXPERIMENT=1

curl -L -o glide-${GLIDE_VERSION}.tar.gz \
           https://github.com/Masterminds/glide/releases/download/${GLIDE_VERSION}/glide-${GLIDE_VERSION}-linux-amd64.tar.gz
tar -zxf glide-${GLIDE_VERSION}.tar.gz
mv linux-amd64/glide /go/bin
rm -rf linux-amd64 glide-${GLIDE_VERSION}.tar.gz

debug "$(glide --version)"
info "using GOPATH=$(glide gopath)"

export GOPATH="$(glide gopath)"
glide install
