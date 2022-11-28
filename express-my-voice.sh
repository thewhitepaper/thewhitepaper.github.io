#!/bin/bash

set -e

read -p "Enter your name: " name

number=$(($(echo $(ls content/2022/*.md | wc -l)) + 1))
date=$(date +%F)

cp content/2022/1.md content/2022/${number}.md

echo "
[[article]]
file = \"${number}.md\"
title = \"◾️◾️◾️◾️◾️◾️◾️◾️◾️◾️\"
author = \"${name}\"
cover = \"\"
pub_date = \"${date}\"
publish = true
featured = true" >> content/2022/zine.toml

echo "${name} = { name = \"◾️◾️◾️\" }" >> zine.toml

echo "Thanks for expressing your voice."
echo
echo "Don't forget to \`git commit\` and \`git push\`, and finally submit your PR."