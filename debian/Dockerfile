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
ENV KEEPALIVE=1 \
    CMAKE_VERSION=3.31.0 \
    GMP_VERSION=6.3.0 \
    MPFR_VERSION=4.2.1\
    MPC_VERSION=1.3.1\
    GDB_VERSION=15.2

RUN set -eux \
    && apt-get update -y \
    && apt-get install -y \ 
    build-essential \ 
    # linux-headers-$(uname -r) \
    libssl-dev \
    cmake \
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

# RUN set -eux \
#     && apt-get update -y \
#     # Compile GMP
#     && wget https://ftp.gnu.org/gnu/gmp/gmp-${GMP_VERSION}.tar.gz \
#     && tar zxvf gmp-${GMP_VERSION}.tar.gz \
#     && cd gmp-${GMP_VERSION} \
#     && ./configure \
#     && make -j$(nproc) \
#     && make install \
#     && cd .. \
#     && rm -rfv zxvf gmp-${GMP_VERSION}.tar.gz \
#     && rm -rfv zxvf gmp-${GMP_VERSION} \
#     # Compile MPFR
#     && wget https://ftp.gnu.org/gnu/mpfr/mpfr-${MPFR_VERSION}.tar.gz \
#     && tar zxvf mpfr-${MPFR_VERSION}.tar.gz \
#     && cd mpfr-${MPFR_VERSION} \
#     && ./configure \
#     && make -j$(nproc) \
#     && make install \
#     && cd .. \
#     && rm -rfv zxvf mpfr-${MPFR_VERSION}.tar.gz \
#     && rm -rfv zxvf mpfr-${MPFR_VERSION} \
#     # Compile MPC
#     && wget https://ftp.gnu.org/gnu/mpc/mpc-${MPC_VERSION}.tar.gz \
#     && tar zxvf mpc-${MPC_VERSION}.tar.gz \
#     && cd mpc-${MPC_VERSION} \
#     && ./configure \
#     && make -j$(nproc) \
#     && make install \
#     && cd .. \
#     && rm -rfv zxvf mpc-${MPC_VERSION}.tar.gz \
#     && rm -rfv zxvf mpc-${MPC_VERSION} \
#     # Compile Cmake
#     && wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}.tar.gz \
#     && tar zxvf cmake-${CMAKE_VERSION}.tar.gz \
#     && cd cmake-${CMAKE_VERSION} \
#     && ./bootstrap --parallel=$(nproc) \
#     && make -j$(nproc) \
#     && make install \
#     && cd .. \
#     && rm -rfv zxvf cmake-${CMAKE_VERSION}.tar.gz \
#     && rm -rfv zxvf cmake-${CMAKE_VERSION} \
#     # Compile GDB
#     && wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz \
#     && tar zxvf gdb-${GDB_VERSION}.tar.gz \
#     && cd gdb-${GDB_VERSION} \
#     && ./configure \
#     && make -j$(nproc) \
#     && make install \
#     && cd .. \
#     && rm -rfv zxvf gdb-${GDB_VERSION}.tar.gz \
#     && rm -rfv zxvf gdb-${GDB_VERSION} \
#     && apt-get autoremove -y \
#     && apt-get clean -y \
#     && rm -rf /var/lib/apt/lists/* \
#     && rm -rf /tmp/* \
#     && rm -rf /var/tmp/* 

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]