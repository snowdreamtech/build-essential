FROM snowdreamtech/debian:12.8.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Base Image Based On Debian" \
    org.opencontainers.image.description="Docker Images for Base on Debian. (i386,amd64,arm32v5,arm32v7,arm64,mips64le,ppc64le,s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/base" \
    org.opencontainers.image.base.name="snowdreamtech/base:debian" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/base" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="12.8" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/base"

# keep the docker container running
ENV KEEPALIVE=1 

RUN set -eux \
    && apt-get update -y \
    && apt-get install -y \ 
    build-essential \ 
    cmake \
    gdb \
    # # linux-headers-$(uname -r) \
    libssl-dev \
    autoconf \
    automake \
    libtool \
    flex \
    bison \
    perl \
    lz4 \
    python3 \
    ninja-build \
    ncurses-dev \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 3 \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]