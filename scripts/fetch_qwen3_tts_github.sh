#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/QwenLM/Qwen3-TTS.git"
TARGET_DIR=${1:-Qwen3-TTS}

if [[ -e "${TARGET_DIR}" ]]; then
  echo "Target directory already exists: ${TARGET_DIR}" >&2
  exit 1
fi

git clone --filter=blob:none --no-checkout "${REPO_URL}" "${TARGET_DIR}"
cd "${TARGET_DIR}"

git sparse-checkout init --cone
git sparse-checkout set .github

git checkout main

echo "Fetched .github from ${REPO_URL} into ${TARGET_DIR}/.github"
