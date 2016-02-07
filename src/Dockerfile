FROM alpine:3.1
MAINTAINER Morgan Auchede <morgan.auchede@gmail.com>

ENV \
    NGINX_VERSION=1.6.2-r1 \
    WEBUI_ARIA2_VERSION=e48a7a79

RUN set -x \

    # Prepare system

    && resolve() { echo $(apk search $1 | grep "$1-$2" | sed -e "s/$1-/$1=/g") ; } \
    && apk add -U \

    # Install packages

    && BUILD_DEPS="ca-certificates git" \
    && apk add \
           $BUILD_DEPS \
           $(resolve nginx $NGINX_VERSION) \

    # Install webui-aria2

    && mkdir -p /var/www \
    && git clone https://github.com/ziahamza/webui-aria2 /var/www/webui-aria2 \
    && git -C /var/www/webui-aria2 checkout $WEBUI_ARIA2_VERSION \

    # Configure nginx

    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \

    # Clean

    && apk del \
           $BUILD_DEPS \
    && rm -rf \
           /var/cache/apk/* \
           /var/www/webui-aria2/.git

COPY ./root /

ENTRYPOINT [ "/entrypoint.sh" ]
