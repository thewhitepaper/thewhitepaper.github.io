#!/bin/bash

set -e

if [ "$1" == "" ];
then
    read -p "Enter your name: " name
else
    name=$1
fi

number=$(($(echo $(grep content/**/zine.toml -e "\[\[article\]\]" | wc -l)) + 1))
month=$(date +'%Y-%m')
date=$(date +%F)

cp voice.md content/${month}/voice.md

echo "
[[article]]
file = \"voice.md\"
path = \"/${number}\"
title = \"◾️◾️◾️◾️◾️◾️◾️◾️◾️◾️\"
author = \"${name}\"
pub_date = \"${date}\"
publish = true
featured = true" >> content/${month}/zine.toml

if [ "${1}" == "" ];
then
    echo "Thanks for expressing your voice."
    echo
    echo "Don't forget to \`git commit -m \"Express my voice\"\`, \`git push origin your-branch\`, and finally submit your PR."
fi