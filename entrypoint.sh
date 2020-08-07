#!/bin/bash -x -e


esbuild "$1" --bundle --sourcemap  --minify --outfile=out.min.js
