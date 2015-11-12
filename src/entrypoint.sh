#!/bin/sh
set -e

RPC_HOST=${RPC_HOST:-http://127.0.0.1}
sed -i "s@%RPC_HOST%@$RPC_HOST@g" /etc/nginx/conf.d/webui-aria2.conf

[[ -n $RPC_SECRET ]] && sed -i "s@%RPC_SECRET%@$RPC_SECRET@g" /var/www/webui-aria2/configuration.js

mkdir -p /tmp/nginx
exec nginx -g "daemon off;"
