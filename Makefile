# alvo padrão
all: build

# compilar código Go
build:
	go build -o build/linux/bin/app main.go

# gerar manifestos extras
sbom:
	./scripts/generate-sbom.sh > sbom-linux.json

attention:
	./scripts/generate-attention.sh > attention-linux.json

immutable:
	./scripts/generate-immutable.sh > immutable-linux.json

# limpar binários
clean:
	rm -rf build/linux/bin/*
	rm -f sbom-linux.json attention-linux.json immutable-linux.json
