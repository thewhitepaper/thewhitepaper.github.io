#!/bin/bash
# Create a new monthly issue

set -e

number=$(($(echo $(ls -d content/* | wc -l)) + 1))
month=$(date +'%Y-%m')

mkdir -p content/${month}
echo "
number = ${number}
title = \"${month}\"
" > content/${month}/zine.toml
