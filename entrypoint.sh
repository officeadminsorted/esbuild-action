#!/bin/sh -x -e


esbuild --bundle --sourcemap  --minify  $1
