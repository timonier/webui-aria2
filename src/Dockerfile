FROM timonier/nginx:latest

LABEL \
    maintainer="Morgan Auchede <morgan.auchede@gmail.com>"

ENV \
    WEBUI_ARIA2_VERSION=latest

RUN set -ex \
\
    # Install packages
\
    && apk add --no-cache --no-progress --virtual BUILD_DEPS \
           git \
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
