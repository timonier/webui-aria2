FROM alpine:3.3
MAINTAINER Morgan Auchede <morgan.auchede@gmail.com>

ENV \
    S6_OVERLAY_VERSION=1.17.1.2 \
    SYSLOG_STDOUT_VERSION=1.1.1 \
    WEBUI_ARIA2_VERSION=e48a7a79

RUN set -x \

    # Prepare system

    && apk add -U \

    # Install packages

    && BUILD_DEPS="ca-certificates git" \

    && apk add \
           $BUILD_DEPS \
           nginx \

    # Install s6-overlay

    && curl -ksL "https://github.com/just-containers/s6-overlay/releases/download/v$S6_OVERLAY_VERSION/s6-overlay-amd64.tar.gz" | tar fxz - -C / \

    # Install syslog-stdout

    && curl -ksL "https://github.com/timonier/syslog-stdout/releases/download/v$SYSLOG_STDOUT_VERSION/syslog-stdout.tar.gz" | tar fxz - -C /usr/sbin \

    # Install webui-aria2

    && rm -rf /var/www \
    && git clone https://github.com/ziahamza/webui-aria2 /var/www \
    && git -C /var/www checkout $WEBUI_ARIA2_VERSION \

    # Clean

    && apk del \
           $BUILD_DEPS \

    && rm -rf \
           /tmp/* \
           /var/cache/apk/* \
           /var/www/.git

COPY ./rootfs /

ENTRYPOINT [ "/init" ]
