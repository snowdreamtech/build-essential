# Build-Essential Image (Debian Variant)
# Extends snowdreamtech/debian with additional tooling and configuration.

FROM snowdreamtech/debian:13.5.0

# Build-time Configuration
ARG BUILDTIME \
    VERSION \
    REVISION \
    DEBIAN_FRONTEND=noninteractive \
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
ARG BUILD_ESSENTIAL_VERSION=13.5.0
# x-release-please-end

# Standard OCI Metadata (https://github.com/opencontainers/image-spec)
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Build-Essential Image Based On Debian" \
    org.opencontainers.image.description="Docker Images for Build-Essential on Debian. (i386, amd64, arm32v5, arm32v7, arm64, mips64le, ppc64le, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/build-essential" \
    org.opencontainers.image.base.name="snowdreamtech/debian:13.5.0" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/build-essential" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.created="${BUILDTIME}" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/build-essential"

# x-release-please-start-version
LABEL org.opencontainers.image.version="${VERSION:-13.5.0}"
# x-release-please-end

# Runtime Environment Configuration
ENV DEBIAN_FRONTEND=${DEBIAN_FRONTEND} \
    KEEPALIVE=${KEEPALIVE} \
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
RUN set -eux \
    && DEBIAN_FRONTEND=noninteractive apt-get -qqy update \
    && DEBIAN_FRONTEND=noninteractive apt-get -qqy install --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    pkg-config \
    git \
    curl \
    wget \
    unzip \
    tar \
    xz-utils \
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
    libssl-dev \
    zlib1g-dev \
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
    libncurses-dev \
    libreadline-dev \
    libffi-dev \
    libsqlite3-dev \
    gdb \
    strace \
    valgrind \
    ltrace \
    libelf-dev \
    gfortran \
    sudo \
    fakeroot \
    texinfo \
    libexpat1-dev \
    nasm \
    yasm \
    swig \
    gperf \
    libbz2-dev \
    liblzma-dev \
    libzstd-dev \
    && DEBIAN_FRONTEND=noninteractive apt-get -qqy --purge autoremove \
    && DEBIAN_FRONTEND=noninteractive apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

# Container Orchestration Files
COPY entrypoint.d /usr/local/bin/entrypoint.d

RUN chmod +x /usr/local/bin/entrypoint.d/*

# Standard Healthcheck (Verification of core system responsiveness)
HEALTHCHECK NONE

# Process Execution
USER root
WORKDIR /root
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
