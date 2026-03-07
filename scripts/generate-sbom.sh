#!/bin/bash
echo '{
  "sbom": {
    "os": "Linux",
    "dependencies": ["go 1.22", "stdlib"],
    "generated_at": "'$(date -u)'"
  }
}' > sbom-linux.json
