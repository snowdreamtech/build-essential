FROM snowdreamtech/alpine:3.20.3

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Base Image Based On Alpine" \
    org.opencontainers.image.description="Docker Images for Base on Alpine. (i386, amd64, arm32v6, arm32v7, arm64, ppc64le,riscv64, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/base" \
    org.opencontainers.image.base.name="snowdreamtech/base:alpine" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/base" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="3.20.3" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/base"

# keep the docker container running
ENV KEEPALIVE=1

RUN apk add --no-cache \
    linux-headers \
    alpine-sdk \
    pkgconf \
    autoconf \
    automake \ 
    gettext-dev \
    gettext-static \
    libtool \
    openssl-dev \
    openssl-libs-static \
    libgcrypt-dev \
    libgcrypt-static \
    gmp-dev \
    libssh2-dev \ 
    libssh2-static \
    c-ares-dev \
    c-ares-static \
    zstd-dev \
    zstd-static \
    libxml2-dev \
    libxml2-static \
    zlib-dev \
    zlib-static \
    sqlite-dev \ 
    sqlite-static \
    libgpg-error-dev \
    libgpg-error-static \
    expat-dev \ 
    expat-static \
    cppunit-dev \
    xz

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]