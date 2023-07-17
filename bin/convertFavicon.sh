#!/usr/bin/env bash

set -euo pipefail
# Remove hash to enable debug
# set -euox pipefail

sizes=(
  '16x16'
  '32x32'
  '64x64'
)

gitroot="$(git rev-parse --show-toplevel)"

for size in ${sizes[*]}
do
  convert \
    "${gitroot}/docs/vos-lineart-dark.svg" \
    -geometry "${size}" \
    -transparent white \
    -background none \
    "${gitroot}/docs/favicon-${size}.png"
done

convert \
  "${gitroot}/docs/vos-lineart-dark.svg" \
  -geometry 16x16 \
  -transparent white \
  -background none \
  "${gitroot}/docs/favicon.ico"

convert \
  "${gitroot}/docs/vos-lineart-dark.svg" \
  -density 1200 \
  -resize 1080x1080 \
  -transparent white \
  -background none \
  "${HOME}/Downloads/vos-lineart-dark.png"

convert \
  "${gitroot}/docs/vos-lineart-light.svg" \
  -density 1200 \
  -resize 1080x1080 \
  -transparent white \
  -background none \
  "${HOME}/Downloads/vos-lineart-light.png"

convert \
  "${gitroot}/docs/vos-lineart-dark.svg" \
  -transparent white \
  -background none \
  -alpha set \
  -channel RGBA \
  -flatten \
  "${gitroot}/docs/BIMI.svg"
