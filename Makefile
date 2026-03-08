# alvos declarados
.PHONY: all build sbom attention immutable clean

# alvo padrão
all: build

GOOS ?= linux
GOARCH ?= amd64
BINARY_DIR := build/$(GOOS)/bin
BINARY_NAME := app$(if $(filter windows,$(GOOS)),.exe,)

# compilar código Go
build:
	mkdir -p $(BINARY_DIR)
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -o $(BINARY_DIR)/$(BINARY_NAME) main.go

# gerar manifestos extras
sbom:
	./scripts/generate-sbom.sh > sbom-$(GOOS).json

attention:
	./scripts/generate-attention.sh > attention-$(GOOS).json

immutable:
	./scripts/generate-immutable.sh > immutable-$(GOOS).json

# limpar binários
clean:
	rm -rf build/*/bin/*
	rm -f sbom-*.json attention-*.json immutable-*.json
