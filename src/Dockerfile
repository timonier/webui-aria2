FROM debian:jessie
MAINTAINER Morgan Auchede <morgan.auchede@gmail.com>

ENV \
    DEBIAN_FRONTEND=noninteractive \
    NGINX_VERSION=1.6.2 \
    WEBUI_ARIA2_VERSION=e48a7a79

RUN set -x \
    && BUILD_DEPS="ca-certificates git" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        $BUILD_DEPS \
        nginx-full=$NGINX_VERSION* \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    && mkdir -p /var/www \
    && git clone https://github.com/ziahamza/webui-aria2 /var/www/webui-aria2 \
    && git -C /var/www/webui-aria2 checkout $WEBUI_ARIA2_VERSION \
    && apt-get purge -y --auto-remove $BUILD_DEPS \
    && rm -rf /etc/nginx/sites-enabled/* /var/lib/apt/lists/* /var/www/webui-aria2/.git

COPY ./configuration.js /var/www/webui-aria2/configuration.js
COPY ./entrypoint.sh /entrypoint.sh
COPY ./webui-aria2.conf /etc/nginx/sites-enabled/webui-aria2.conf

ENTRYPOINT [ "/entrypoint.sh" ]
