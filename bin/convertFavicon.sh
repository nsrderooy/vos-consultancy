#!/usr/bin/env bash

set -euo pipefail
# Remove hash to enable debug
 set -euox pipefail

sizes=(
  16x16
  32x32
  64x64
)

gitroot="$(git rev-parse --show-toplevel)"

for size in ${sizes[*]}
do
  convert -size "${size}" "${gitroot}/docs/vos-lineart-dark.svg" "${gitroot}/docs/favicon-${size}.png"
done

