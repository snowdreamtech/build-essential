FROM snowdreamtech/openssh:9.7_p1-r3

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

RUN apk add --no-cache openssl-dev \
                        zlib-dev \
                        alpine-sdk \
                        git \
                        subversion \
                        mercurial \
                        xz