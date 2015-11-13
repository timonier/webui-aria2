#!/bin/sh
set -e

RPC_HOST=${RPC_HOST:-127.0.0.1}
RPC_PORT=${RPC_PORT:-6800}
RPC_SECRET=${RPC_SECRET:-}

sed -i "s@%RPC_HOST%@$RPC_HOST@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_PORT%@$RPC_PORT@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_SECRET%@$RPC_SECRET@g" /var/www/webui-aria2/configuration.js

mkdir -p /tmp/nginx
exec nginx -g "daemon off;"
