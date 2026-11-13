#!/bin/sh
set -eu
npm ci
npm run build
rm -rf site
cp -r dist site
find site -name '*.map' -type f -delete
