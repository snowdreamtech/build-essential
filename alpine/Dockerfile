FROM snowdreamtech/alpine:3.21.3

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="build-essential Image Based On Alpine" \
    org.opencontainers.image.description="Docker Images for build-essential on Alpine. (i386, amd64, arm32v6, arm32v7, arm64, ppc64le,riscv64, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/build-essential" \
    org.opencontainers.image.base.name="snowdreamtech/build-essential:alpine" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/build-essential" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="3.21.3" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/build-essential"

ARG GID=1000 \
    UID=1000  \
    USER=build \
    WORKDIR=/home/build

# Create a user with UID and GID
RUN if [ "${USER}" != "root" ]; then \
    addgroup -g ${GID} ${USER}; \
    adduser -h /home/${USER} -u ${UID} -g ${USER} -G ${USER} -s /bin/sh -D ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi

RUN apk add --no-cache \
    alpine-sdk \ 
    cmake \
    gdb \
    linux-headers \
    openssl-dev \
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
    vim

COPY vimrc.local /etc/vim/vimrc.local

# Switch to the user
USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]