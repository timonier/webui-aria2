FROM nginx:alpine

LABEL \
    maintainer="Morgan Auchede <morgan.auchede@gmail.com>"

ENV \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_KEEP_ENV=1 \
    WEBUI_ARIA2_VERSION=latest

RUN set -ex \

    # Install packages

    && apk add --no-cache --no-progress --virtual BUILD_DEPS \
           curl \
           git \

    # Install timonier/dumb-entrypoint

    && curl --location "https://github.com/timonier/dumb-entrypoint/raw/master/src/s6-overlay/installer" | INSTALL_DIRECTORY="/usr/sbin" sh -s -- install \
    && curl --location "https://github.com/timonier/dumb-entrypoint/raw/master/src/syslog-stdout/installer" | INSTALL_DIRECTORY="/usr/sbin" sh -s -- install \

    # Install webui-aria2

    && git clone https://github.com/ziahamza/webui-aria2 /usr/share/webui-aria2 \

    # Clean

    && apk del --no-progress \
           BUILD_DEPS \

    && rm -f -r \
           /tmp/* \
           /usr/share/webui-aria2/.git

COPY ./rootfs /

ENTRYPOINT [ "/init" ]
