KUSTOMIZE ?= kustomize

.PHONY: build clean

build:
	$(KUSTOMIZE) build manifests/base > install.yaml

clean:
	rm -f $(OUTPUT)
