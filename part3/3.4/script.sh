#!/bin/sh
REPO_NAME="$1"
DIRECTORY_NAME="$(basename "$REPO_NAME")"
git clone "https://github.com/$REPO_NAME"
cd "$DIRECTORY_NAME"
docker build . --tag $DOCKER_USER/$DIRECTORY_NAME
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin
docker push $DOCKER_USER/$DIRECTORY_NAME
cd ..
rm -rf "$DIRECTORY_NAME"