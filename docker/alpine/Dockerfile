# Build-Essential Image (Alpine Variant)
# Extends snowdreamtech/alpine with additional tooling and configuration.

FROM snowdreamtech/alpine:3.24.0

# Build-time Configuration
ARG BUILDTIME \
    VERSION \
    REVISION \
    KEEPALIVE=0 \
    CAP_NET_BIND_SERVICE=0 \
    LANG=C.UTF-8 \
    UMASK=022 \
    DEBUG=false \
    PASSWORDLESS_SUDO=false \
    PGID=0 \
    PUID=0 \
    USER=root \
    WORKDIR=/root

# x-release-please-start-version
ARG BUILD_ESSENTIAL_VERSION=3.24.0
# x-release-please-end

# Standard OCI Metadata (https://github.com/opencontainers/image-spec)
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Build-Essential Image Based On Alpine" \
    org.opencontainers.image.description="Docker Images for Build-Essential on Alpine. (i386, amd64, arm32v6, arm32v7, arm64, ppc64le, riscv64, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/build-essential" \
    org.opencontainers.image.base.name="snowdreamtech/alpine:3.24.0" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/build-essential" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.created="${BUILDTIME}" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/build-essential"

# x-release-please-start-version
LABEL org.opencontainers.image.version="${VERSION:-3.24.0}"
# x-release-please-end

# Runtime Environment Configuration
ENV KEEPALIVE=${KEEPALIVE} \
    CAP_NET_BIND_SERVICE=${CAP_NET_BIND_SERVICE} \
    LANG=${LANG} \
    UMASK=${UMASK} \
    DEBUG=${DEBUG} \
    PASSWORDLESS_SUDO=${PASSWORDLESS_SUDO} \
    PGID=${PGID} \
    PUID=${PUID} \
    USER=${USER} \
    WORKDIR=${WORKDIR} \
    BUILD_ESSENTIAL_VERSION=${BUILD_ESSENTIAL_VERSION}

# Additional tooling and configuration for Build-Essential image
RUN apk update \
    && apk add --no-cache \
    alpine-sdk \
    cmake \
    ninja \
    pkgconf \
    curl \
    wget \
    unzip \
    tar \
    xz \
    vim \
    meson \
    zip \
    bzip2 \
    gzip \
    zstd \
    gnupg \
    ca-certificates \
    file \
    tree \
    jq \
    openssl-dev \
    zlib-dev \
    autoconf \
    automake \
    libtool \
    m4 \
    patch \
    flex \
    bison \
    ccache \
    gettext \
    perl \
    python3 \
    rsync \
    bash \
    gawk \
    bc \
    dos2unix \
    ncurses-dev \
    readline-dev \
    libffi-dev \
    sqlite-dev \
    linux-headers \
    gfortran \
    coreutils \
    findutils \
    diffutils \
    sudo \
    fakeroot \
    texinfo \
    expat-dev \
    swig \
    gperf \
    bzip2-dev \
    xz-dev \
    zstd-dev \
    && for pkg in gdb strace valgrind ltrace elfutils-dev nasm yasm; do \
        apk add --no-cache $pkg || echo "Package $pkg not available on this architecture, skipping."; \
    done

# Container Orchestration Files
COPY entrypoint.d /usr/local/bin/entrypoint.d

RUN chmod +x /usr/local/bin/entrypoint.d/*

# Standard Healthcheck (Verification of core system responsiveness)
HEALTHCHECK NONE

# Process Execution
USER root
WORKDIR /root
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/sh"]
