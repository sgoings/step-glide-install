#!/bin/sh
set -eo pipefail

version="$(glide --version)"

debug "${version}"

glide install --cache
