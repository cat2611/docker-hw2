#!/usr/bin/bash

## --- Настройки ---
REPO_URL="https://github.com/cat2611/docker-hw2/archive/refs/heads/main.zip"
WORK_DIR="/opt"
ZIP_NAME="docker-hw2-main.zip"
PROJECT_NAME="docker-hw2-main"   # имя папки после распаковки архива GitHub

##script####
cd "$WORK_DIR"
curl -fL -o "$ZIP_NAME" "$REPO_URL"
unzip -q "$ZIP_NAME"
cd "$WORK_DIR/$PROJECT_NAME"
docker compose up -d
