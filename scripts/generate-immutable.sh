#!/bin/bash
# Gera um manifesto de imutabilidade baseado em hash SHA256 do binário

BIN_PATH="build/linux/bin/app"

if [ -f "$BIN_PATH" ]; then
  HASH=$(sha256sum "$BIN_PATH" | awk '{print $1}')
else
  HASH="binário não encontrado"
fi

echo '{
  "immutable": {
    "os": "Linux",
    "binary_path": "'$BIN_PATH'",
    "sha256": "'$HASH'",
    "generated_at": "'$(date -u)'"
  }
}'
