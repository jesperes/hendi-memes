#!/bin/bash

VERSION=$(jq -r '.version' < info.json)
NAME=$(jq -r '.name' < info.json)
ZIP=${NAME}_${VERSION}.zip
rm -f "$ZIP"
git archive --format=zip --prefix="$NAME/" -o "$ZIP" HEAD
