.SILENT:
.PHONY: build push

IMAGE_TAG	= docker.io/jorgegv/dmarc-report
IMAGE_VERSION	= 1.0.1

default:

# Build docker image
build:
	docker build --no-cache -t "$(IMAGE_TAG):$(IMAGE_VERSION)" .
	docker image tag "$(IMAGE_TAG):$(IMAGE_VERSION)" "$(IMAGE_TAG):latest"

# Push docker image to Docker hub
push:
	docker image push "$(IMAGE_TAG):$(IMAGE_VERSION)"
	docker image push "$(IMAGE_TAG):latest"
