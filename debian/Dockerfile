FROM snowdreamtech/debian:12.7.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Base Image Based On Debian" \
    org.opencontainers.image.description="Docker Images for Base on Debian. (i386,amd64,arm32v5,arm32v7,arm64,mips64le,ppc64le,s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/base" \
    org.opencontainers.image.base.name="snowdreamtech/base:debian" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/base" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="12.7" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/base"

# keep the docker container running
ENV KEEPALIVE=1

RUN set -eux \
    && sed -i "s|Types:\s*deb.*|Types: deb deb-src|g" /etc/apt/sources.list.d/debian.sources \
    && apt-get -qqy update  \
    && apt-get -qqy install --no-install-recommends \ 
    build-essential \
    pkg-config \ 
    autoconf \
    automake \ 
    autotools-dev \ 
    autopoint \
    libtool \
    # libssl-dev \
    # libgnutls28-dev \
    # libgcrypt20-dev \
    # nettle-dev \
    # libgmp-dev \
    # libssh2-1-dev \
    # libc-ares-dev \
    # libzstd-dev \
    # libxml2-dev \
    # zlib1g-dev \
    # libsqlite3-dev \
    # libgpg-error-dev \
    # libexpat1-dev \ 
    # libcppunit-dev \
    # git \
    # subversion \
    # mercurial \
    # xz-utils \
    # && LIBS_PATH=$(find /usr/lib -name "libcares_static.a" -exec dirname {} \;) \
    # && ln -s ${LIBS_PATH}/libcares_static.a ${LIBS_PATH}/libcares.a \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]