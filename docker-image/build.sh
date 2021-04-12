#!/bin/bash
set -e

docker build -f Dockerfile.base -t nvim-base .
docker build -f Dockerfile.nvim -t nvim .
