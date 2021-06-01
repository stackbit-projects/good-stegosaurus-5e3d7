#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://develop.widget.stackbit.com/init.js 60b5e3d7826a9ba3122ec0d2

echo "stackbit-build.sh: finished build"
