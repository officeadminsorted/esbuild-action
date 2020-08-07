#!/bin/sh -x -e


esbuild $1 --bundle --sourcemap  --minify --outfile=out.min.js
