FROM golang:alpine

RUN go get github.com/evanw/esbuild/ && go install github.com/evanw/esbuild/cmd/esbuild

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
