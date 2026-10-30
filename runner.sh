#!/usr/bin/bash
## --- Настройки ---
REPO_URL="https://github.com/cat2611/docker-hw2.git"
WORK_DIR="/opt"
PROJECT_NAME="docker-hw2"   # имя папки после распаковки архива GitHub

##script####
cd "$WORK_DIR"
if [[ -d "$PROJECT_NAME" ]]; then
        cd "$WORK_DIR/$PROJECT_NAME"
        git pull
        docker compose up -d
else
        git clone $REPO_URL
        cd "$WORK_DIR/$PROJECT_NAME"
        docker compose up -d
fi
