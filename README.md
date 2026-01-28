# Qwen3-TTS .github をMacで利用する手順

このリポジトリは、QwenLM/Qwen3-TTS の `.github` ディレクトリだけをMacBookのローカル環境に取得するための補助スクリプトを提供します。

## 前提
- macOS
- `git` がインストール済み

## 使い方

1. スクリプトを実行して `.github` だけを取得します。

```bash
./scripts/fetch_qwen3_tts_github.sh
```

2. 取得先ディレクトリ（デフォルト: `Qwen3-TTS`）内に `.github` が作成されます。

```bash
ls Qwen3-TTS/.github
```

## 取得先を指定する場合

```bash
./scripts/fetch_qwen3_tts_github.sh my-qwen3-tts
```

## 取得済みディレクトリがある場合

同名ディレクトリがあるとエラーになります。別名を指定するか、既存ディレクトリを削除してください。
