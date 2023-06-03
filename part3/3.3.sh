#!/bin/sh
REPO_NAME="$1"
DIRECTORY_NAME="$(basename "$REPO_NAME")"
git clone "https://github.com/$REPO_NAME"
cd "$DIRECTORY_NAME"
docker build . --tag matskuman5/$DIRECTORY_NAME
docker push matskuman5/$DIRECTORY_NAME
cd ..
rm -rf "$DIRECTORY_NAME"