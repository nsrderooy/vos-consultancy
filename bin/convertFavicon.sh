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
    "${gitroot}/docs/lineArtDark.svg" \
    -geometry "${size}" \
    -transparent white \
    -background none \
    "${gitroot}/docs/favicon-${size}.png"
done

convert \
  "${gitroot}/docs/lineArtDark.svg" \
  -geometry 16x16 \
  -transparent white \
  -background none \
  "${gitroot}/docs/favicon.ico"

convert \
  "${gitroot}/docs/lineArtDark.svg" \
  -density 1200 \
  -resize 1080x1080 \
  -transparent white \
  -background none \
  "${HOME}/Downloads/lineArtDark.png"

convert \
  "${gitroot}/docs/lineArtLight.svg" \
  -density 1200 \
  -resize 1080x1080 \
  -transparent white \
  -background none \
  "${HOME}/Downloads/lineArtLight.png"

convert \
  "${gitroot}/docs/lineArtDark.svg" \
  -transparent white \
  -background none \
  -alpha set \
  -channel RGBA \
  -flatten \
  "${gitroot}/docs/BIMI.svg"
