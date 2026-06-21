# Build-Essential Image (Rocky Variant)
# Extends snowdreamtech/rocky with additional tooling and configuration.

FROM snowdreamtech/rocky:10.2.0

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
ARG BUILD_ESSENTIAL_VERSION=10.2.0
# x-release-please-end

# Standard OCI Metadata (https://github.com/opencontainers/image-spec)
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Build-Essential Image Based On Rocky" \
    org.opencontainers.image.description="Docker Images for Build-Essential on Rocky. (amd64, arm64, ppc64le, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/build-essential" \
    org.opencontainers.image.base.name="snowdreamtech/rocky:10.2.0" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/build-essential" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.created="${BUILDTIME}" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/build-essential"

# x-release-please-start-version
LABEL org.opencontainers.image.version="${VERSION:-10.2.0}"
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
RUN set -eux \
    && dnf -y --allowerasing update \
    && dnf -y --allowerasing groupinstall "Development Tools" \
    && dnf -y --allowerasing install \
    cmake \
    ninja-build \
    pkgconf \
    git \
    curl \
    wget \
    unzip \
    tar \
    xz \
    vim-enhanced \
    meson \
    zip \
    bzip2 \
    gzip \
    zstd \
    gnupg2 \
    ca-certificates \
    file \
    tree \
    jq \
    openssl-devel \
    zlib-devel \
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
    ncurses-devel \
    readline-devel \
    libffi-devel \
    sqlite-devel \
    gcc-gfortran \
    sudo \
    fakeroot \
    texinfo \
    expat-devel \
    swig \
    gperf \
    bzip2-devel \
    xz-devel \
    libzstd-devel \
    && for pkg in gdb strace valgrind ltrace elfutils-libelf-devel nasm yasm; do \
        dnf -y --allowerasing install $pkg || echo "Package $pkg not available on this architecture, skipping."; \
    done \
    && dnf -y --allowerasing autoremove \
    && dnf -y --allowerasing clean all \
    && rm -rf /var/cache/dnf \
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
