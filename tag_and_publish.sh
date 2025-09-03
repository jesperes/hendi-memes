#!/bin/bash

# Tag and push the version
VERSION=$(jq -r '.version' < info.json)
git tag "$VERSION" HEAD
git push origin "$VERSION"

# Make the zip
NAME=$(jq -r '.name' < info.json)
ZIP=${NAME}_${VERSION}.zip
rm -f "$ZIP"
git archive --format=zip --prefix="$NAME/" -o "$ZIP" "$VERSION"
