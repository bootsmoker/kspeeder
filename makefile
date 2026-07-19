KUSTOMIZE ?= kustomize

.PHONY: build clean

build:
	$(KUSTOMIZE) build manifests > install.yaml

clean:
	rm -f $(OUTPUT)
