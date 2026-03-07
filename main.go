all: build sbom attention immutable

# Compilar o main.go
build:
	mkdir -p build/linux/bin
	go build -o build/linux/bin/app main.go

# Gerar manifestos
sbom:
	./scripts/generate-sbom.sh > sbom-linux.json

attention:
	./scripts/generate-attention.sh > attention-linux.json

immutable:
	./scripts/generate-immutable.sh > immutable-linux.json

# Limpar binários e manifestos
clean:
	rm -rf build/linux/bin/*
	rm -f sbom-linux.json attention-linux.json immutable-linux.json
