FROM alpine:3.3
MAINTAINER Morgan Auchede <morgan.auchede@gmail.com>

ENV \
    S6_OVERLAY_VERSION=1.17.1.2 \
    SYSLOG_STDOUT_VERSION=1.1.1 \
    WEBUI_ARIA2_VERSION=e48a7a79

RUN set -x \

    # Install packages

    && apk add --no-cache --no-progress --virtual build_deps \
           git \

    && apk add --no-cache --no-progress \
           nginx \

    # Configure nginx

    && mkdir -p /var/tmp/nginx \
    && chown nginx:nginx /var/tmp/nginx \

    # Install s6-overlay

    && curl -sL "https://github.com/just-containers/s6-overlay/releases/download/v$S6_OVERLAY_VERSION/s6-overlay-amd64.tar.gz" | tar fxz - -C / \

    # Install syslog-stdout

    && curl -sL "https://github.com/timonier/syslog-stdout/releases/download/v$SYSLOG_STDOUT_VERSION/syslog-stdout.tar.gz" | tar fxz - -C /usr/sbin \

    # Install webui-aria2

    && git clone https://github.com/ziahamza/webui-aria2 /usr/share/webui-aria2 \
    && git -C /usr/share/webui-aria2 checkout $WEBUI_ARIA2_VERSION \

    # Clean

    && apk del --no-progress \
           build_deps \

    && rm -rf \
           /tmp/* \
           /usr/share/webui-aria2/.git \
           /var/www

COPY ./rootfs /

ENTRYPOINT [ "/init" ]
