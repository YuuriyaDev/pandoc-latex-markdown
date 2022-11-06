#!/bin/bash
now=`date +"%m_%d_%Y"`
name="PRAMUDYA_ARYA_WICAKSANA"
npm="2242805"

mkdir build -p
file="$1"
filename=$(echo "$file" | cut -f 1 -d '.')
pandoc $1 \
--filter pandoc-citeproc \
--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
--to=latex \
--output=build/${filename}-${name}-${npm}-${now}.pdf \
--template "./template.tex" \
--highlight-style tango \
--metadata-file "./metadata.yaml" \
--pdf-engine=xelatex
