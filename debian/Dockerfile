FROM snowdreamtech/debian:12.10.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="build-essential Image Based On Debian" \
    org.opencontainers.image.description="Docker Images for build-essential on Debian. (i386,amd64,arm32v5,arm32v7,arm64,mips64le,ppc64le,s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/build-essential" \
    org.opencontainers.image.base.name="snowdreamtech/build-essential:debian" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/build-essential" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="12.10.0" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/build-essential"

ARG GID=1000 \
    UID=1000  \
    USER=build \
    WORKDIR=/home/build

# Create a user with UID and GID
RUN set -eux \
    &&if [ "${USER}" != "root" ]; then \
    addgroup --gid ${GID} ${USER}; \
    adduser --home /home/${USER} --uid ${UID} --gid ${GID} --gecos ${USER} --shell /bin/bash --disabled-password ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/* 

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

# Switch to the user
USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]