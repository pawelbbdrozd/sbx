#!/bin/sh
# Builds one kit with the Kit frontend and pushes it to Docker Hub.
# Usage: publish.sh <kit directory>   (kits/<name> or workloads/<name>)
# Needs DOCKERHUB_NAMESPACE, a logged-in docker and buildx with qemu.
# The tag is the `version:` of the descriptor, which release-please has bumped.
set -eu

dir=${1%/}
name=$(basename "$dir")
file="$name.yaml"
version=$(sed -n 's/^version:[[:space:]]*"\{0,1\}\([0-9][0-9.]*\)"\{0,1\}[[:space:]]*$/\1/p' "$dir/$file")
[ -n "$version" ] || { echo "no version in $dir/$file" >&2; exit 1; }

ref="docker.io/$DOCKERHUB_NAMESPACE/$name:$version"

# A tag names one build. A version that is already published is bumped, not
# overwritten.
if docker buildx imagetools inspect "$ref" >/dev/null 2>&1; then
  echo "$ref is already published, skipping."
  exit 0
fi

# The registry cache keeps one tag per kit, so a new version reuses its layers.
cache="docker.io/$DOCKERHUB_NAMESPACE/buildcache:$name"

cd "$dir"
docker buildx build . -f "$file" \
  --platform linux/amd64,linux/arm64 \
  --provenance=true \
  --cache-from "type=registry,ref=$cache" \
  --cache-to "type=registry,ref=$cache,mode=max,image-manifest=true,oci-mediatypes=true,ignore-error=true" \
  --push -t "$ref"

echo "published $ref"
