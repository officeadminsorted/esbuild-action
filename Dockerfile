FROM golang:alpine

RUN apk --update --no-cache add jq curl bash gcc git make musl-dev libc6-compat tar && \
  go get github.com/evanw/esbuild/cmd/esbuild && go install github.com/evanw/esbuild/cmd/esbuild

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
