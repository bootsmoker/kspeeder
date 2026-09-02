KUSTOMIZE ?= kustomize

.PHONY: build clean

build:
	$(KUSTOMIZE) build manifests/overlays/infra > install-infra.yaml
	$(KUSTOMIZE) build manifests/overlays/smoker > install-smoker.yaml

clean:
	rm -f $(OUTPUT)
