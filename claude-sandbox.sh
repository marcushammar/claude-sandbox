#!/bin/bash
set -e

mkdir -p $HOME/.claude_sandbox
touch $HOME/.claude_sandbox.json

docker build -t claude-sandbox $(dirname $0)
docker run -it --rm -v $(pwd):/workspace -v $HOME/.claude_sandbox:/root/.claude -v $HOME/.claude_sandbox.json:/root/.claude.json claude-sandbox
