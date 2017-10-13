FROM alpine

# libc6-compat is needed for dynamic linking on alpine
RUN apk update && apk add curl libc6-compat ca-certificates

WORKDIR /usr/local/bin
RUN curl https://bin.equinox.io/c/htRtQZagtfg/rainforest-cli-stable-linux-amd64.tgz | tar xz && apk del curl

WORKDIR /

ENTRYPOINT ["rainforest"]
CMD ["--help"]
