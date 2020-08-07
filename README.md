# esbuild-action

This is a simple job to run an [esbuild](https://github.com/evanw/esbuild) build. 

It is a little simple now will be extended. P.R.s welcome.

## Inputs

### `entrypoint`

**Required** The entry point to minify from. Default `"handler.js"`.

## Outputs

### out.min.js

This is not a return value. This is a file it creates

## Example usage

      on: [push]

      jobs:
        esbuild:
          runs-on: ubuntu-latest
          name: Build attempt
          steps:
          - name: esbuild
            id: esbuild1
            uses: officeadminsorted/esbuild-action@master
            with:
              entrypoint: 'handler.js'
