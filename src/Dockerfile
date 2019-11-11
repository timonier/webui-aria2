FROM timonier/nginx:latest

LABEL \
    maintainer="Morgan AUCHEDE <morgan.auchede@gmail.com>"

RUN set -e -u -x \
\
    # Install packages
\
    && apk add --no-cache --no-progress --virtual BUILD_DEPS curl \
\
    # Install webui-aria2
\
    && curl --location "https://github.com/ziahamza/webui-aria2/archive/master.tar.gz" | tar --directory /tmp --extract --gzip \
    && mkdir -p /opt \
    && mv /tmp/webui-aria2-master /opt/webui-aria2 \
\
    # Clean
\
    && apk del --no-progress BUILD_DEPS \
    && rm -f -r /tmp/*

COPY rootfs/ /
