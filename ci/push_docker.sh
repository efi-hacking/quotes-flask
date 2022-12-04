#!/usr/bin/env bash

REGISTRY="ghcr.io/eficode-academy"
FRONTEND_REPOSITORY="flask-quotes-frontend"
BACKEND_REPOSITORY="flask-quotes-backend"

GIT_TAG=$(git rev-parse HEAD)
TAG="release"

FRONTEND_IMAGE="$REGISTRY/$FRONTEND_REPOSITORY:$GIT_TAG"
BACKEND_IMAGE="$REGISTRY/$BACKEND_REPOSITORY:$GIT_TAG"

RELEASE_FRONTEND_IMAGE="$REGISTRY/$FRONTEND_REPOSITORY:$TAG"
RELEASE_BACKEND_IMAGE="$REGISTRY/$BACKEND_REPOSITORY:$TAG"

echo "Pushing images ..."

docker push $FRONTEND_IMAGE
docker push $BACKEND_IMAGE
docker push $RELEASE_FRONTEND_IMAGE
docker push $RELEASE_BACKEND_IMAGE
