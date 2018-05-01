FROM nginx:stable-alpine

LABEL \
    maintainer="Morgan Auchede <morgan.auchede@gmail.com>"

ENV \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_KEEP_ENV=1 \
    WEBUI_ARIA2_VERSION=latest \
    S6_READ_ONLY_ROOT=1

RUN set -ex \
\
    # Install packages
\
    && apk add --no-cache --no-progress --virtual BUILD_DEPS \
           curl \
           git \
\
    # Install timonier/dumb-entrypoint
\
    && curl --location "https://github.com/timonier/dumb-entrypoint/raw/master/src/s6-overlay/installer" | INSTALL_DIRECTORY="/usr/sbin" sh -s -- install \
\
    # Install ziahamza/webui-aria2
\
    && git clone https://github.com/ziahamza/webui-aria2 /opt/webui-aria2 \
\
    # Clean
\
    && apk del --no-progress \
           BUILD_DEPS \
    && rm -f -r \
           /opt/webui-aria2/.git \
           /tmp/*

COPY ./rootfs /

ENTRYPOINT [ "/init" ]
