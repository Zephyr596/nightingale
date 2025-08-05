#!/bin/bash

REGISTRY="registry-ap-southeast.scitix.ai"
NAMESPACE="k8s"
IMAGE_NAME="n9e"
TAG="test"

LOCAL_IMAGE="${IMAGE_NAME}:${TAG}"
REMOTE_IMAGE="${REGISTRY}/${NAMESPACE}/${IMAGE_NAME}:${TAG}"

docker tag "${LOCAL_IMAGE}" "${REMOTE_IMAGE}"
docker push "${REMOTE_IMAGE}"
