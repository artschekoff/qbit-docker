IMAGE ?= ghcr.io/artschekoff/qbitx
TAG ?= latest
PLATFORM ?= linux/amd64
PLATFORM_AMD64 ?= linux/amd64
PLATFORM_386 ?= linux/386
DOCKER ?= docker

.PHONY: build push build-amd64 build-386 push-amd64 push-386

build:
	$(DOCKER) build --platform $(PLATFORM) -t $(IMAGE):$(TAG) .

push: build
	$(DOCKER) push $(IMAGE):$(TAG)

build-amd64:
	$(DOCKER) build --platform $(PLATFORM_AMD64) -t $(IMAGE):$(TAG) .

push-amd64: build-amd64
	$(DOCKER) push $(IMAGE):$(TAG)

build-386:
	$(DOCKER) build --platform $(PLATFORM_386) -t $(IMAGE):$(TAG) .

push-386: build-386
	$(DOCKER) push $(IMAGE):$(TAG)
