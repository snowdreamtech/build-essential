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
    org.opencontainers.image.version="12.7" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/base"

# keep the docker container running
ENV CMAKE_VERSION=3.31.0

RUN set -eux \
    && sed -i "s|Types:\s*deb.*|Types: deb deb-src|g" /etc/apt/sources.list.d/debian.sources \
    && apt-get -qqy update  \
    && apt-get -qqy install \ 
    build-essential \ 
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

RUN set -eux \
    && wget -c https://github.com/Kitware/CMake/releases/download/${CMAKE_VERSION}/cmake-${CMAKE_VERSION}.tar.gz \
    && tar -zxvf cmake-${CMAKE_VERSION}.tar.gz \
    && cd cmake-${CMAKE_VERSION} \
    && ./bootstrap \
    && make \
    && make install \
    && rm -rfv cmake-${CMAKE_VERSION}.tar.gz \
    && rm -rfv cmake-${CMAKE_VERSION}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]