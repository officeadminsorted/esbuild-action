#!/bin/bash -e

for entry in $INPUT_FILES; do
  outname=`echo ${entry} | sed 's/\.\(js\|ts\|jsx\|tsx\)$/.min.js/'`
  echo "Compiling ${entry} to ${outname}"
  esbuild "$entry" --bundle --sourcemap  --minify --outfile=$outname
done
