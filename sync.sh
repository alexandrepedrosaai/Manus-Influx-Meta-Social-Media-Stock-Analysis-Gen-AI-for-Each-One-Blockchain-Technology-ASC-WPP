#!/bin/bash
set -e

# Source folder with your C++ project
SRC_DIR="Stickler-Protocol-The-Cabal-Nexus"
DEST_DIR=".github/workflows"

# Ensure destination exists
mkdir -p $DEST_DIR

echo "Copying workflow file..."
cp $SRC_DIR/workflows/cpp-deploy.yml $DEST_DIR/cpp-deploy.yml

echo "Copying all C++ source files..."
mkdir -p build
cp $SRC_DIR/*.cpp build/

echo "Sync complete: workflow + sources are ready."
