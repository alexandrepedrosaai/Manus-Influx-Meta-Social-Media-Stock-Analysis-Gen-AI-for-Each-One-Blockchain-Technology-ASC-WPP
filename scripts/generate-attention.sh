#!/bin/bash
# Gera metadados de atenção para auditoria
# Pode ser expandido com métricas de build, logs, etc.

echo '{
  "attention": {
    "os": "Linux",
    "build_id": "'${GITHUB_RUN_ID}'",
    "notes": "Build executado com foco em segurança e consistência",
    "generated_at": "'$(date -u)'"
  }
}'
