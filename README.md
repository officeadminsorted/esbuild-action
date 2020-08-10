# esbuild-action

This is a simple job to run an [esbuild](https://github.com/evanw/esbuild) build. 

It is a little simple now will be extended. P.R.s welcome.

## Inputs

### `files`

**Required** The files to compile, white space separated. By default 'main.js'

## Outputs

### ${file}.min.js

This is not a return value. This is a file it creates

## Example usage

      on: [push]

      jobs:
        esbuild:
          runs-on: ubuntu-latest
          name: Build attempt
          steps:
          - uses: actions/checkout@v2
          - name: esbuild
            id: esbuild1
            uses: officeadminsorted/esbuild-action@master
            with:
              files: |
                  handler.js
          - uses: "marvinpinto/action-automatic-releases@latest"
            with:
              repo_token: "${{ secrets.GITHUB_TOKEN }}"
              automatic_release_tag: "latest"
              prerelease: false
              title: "Build"
              files: |
                handler.min.js
