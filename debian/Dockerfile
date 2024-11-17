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

RUN set -eux \
    && sed -i "s|Types:\s*deb.*|Types: deb deb-src|g" /etc/apt/sources.list.d/debian.sources \
    && apt-get -qqy update  \
    && apt-get -qqy install \ 
    build-essential \ 
    libssl-dev \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/* \
    && sed -i "s|Suites:\s*bookworm\s*bookworm-updates.*|Suites: bookworm bookworm-updates bookworm-backports trixie sid experimental|g" /etc/apt/sources.list.d/debian.sources \
    && echo 'export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"' >> /etc/bash.bashrc 

RUN set -eux \
    && apt-get -qqy update  \
    && apt-get -qqy install \ 
    && wget https://apt.llvm.org/llvm.sh \
    && chmod +x llvm.sh \
    && ./llvm.sh all \
    && rm llvm.sh \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/* 


# RUN set -eux \
#     && apt-get -qqy update  \
#     && apt-get -qqy install --no-install-recommends \ 
#     procps \
#     sudo \
#     vim \ 
#     unzip \
#     tzdata \
#     openssl \
#     wget \
#     curl \
#     iputils-ping \
#     lsof \
#     apt-transport-https \
#     ca-certificates \                                                                                                                                                                                                      
#     && update-ca-certificates\
#     && apt-get -qqy --purge autoremove \
#     && apt-get -qqy clean \
#     && rm -rf /var/lib/apt/lists/* \
#     && rm -rf /tmp/* \
#     && rm -rf /var/tmp/* 

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]