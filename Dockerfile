FROM alpine:edge
MAINTAINER niiv0832 <dockerhubme-ssr@yahoo.com>

ARG pkgname=shadowsocks-libev
ARG pkgver=3.3.4
ARG pkgrel=0
ARG pkgdesc="lightweight secured SOCKS5 proxy"
ARG url="https://github.com/shadowsocks/shadowsocks-libev"
ARG arch="all"
ARG license="GPLv3"


RUN \
      apk update && \
      apk upgrade && \
      apk add \
              wget \
              autoconf \
              automake \
              libtool \
              linux-headers \
              mbedtls-dev \
              libsodium-dev \
              pcre-dev \
              libev-dev \
              c-ares-dev \
              asciidoc \
              xmlto \
              gcc \
              alpine-sdk && \
      apk add libbloom-dev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main && \
      apk add libcork-dev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main && \
      apk add libcorkipset-dev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main && \
      
      wget --no-check-certificate https://github.com/shadowsocks/shadowsocks-libev/archive/v3.3.4.tar.gz -O /tmp//sssrc/v3.3.4.tar.gz
      
      apk add --update alpine-sdk
