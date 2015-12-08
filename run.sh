#!/bin/sh
set -eo pipefail

debug "$(glide --version)"

glide install --cache
