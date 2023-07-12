#!/usr/bin/env bash

set -e

if [ -z "$1" -o ! -e "$1" -o -z "$2" ]
then
    echo "$0 <config> <output>" >&2
    exit 1
fi

EC_ARGS=()
while read line; do
    if [[ "$line" != "#"* ]]; then
        EC_ARGS+=("$line")
    fi
done < "$1"

source "$1"
pushd ec >/dev/null
DATE="$(git show --format="%cs" --no-patch --no-show-signature)"
REV="$(git describe --always --dirty --abbrev=7)"
VERSION="${DATE}_${REV}"
make "${EC_ARGS[@]}" clean
make "${EC_ARGS[@]}" -j "$(nproc)"
cp "build/${BOARD}/${VERSION}/ec.rom" "$2"
popd >/dev/null
