#!/bin/sh
set -e

RPC_HOST=${RPC_HOST:-127.0.0.1}
RPC_PORT=${RPC_PORT:-6800}
RPC_SECRET=${RPC_SECRET:-00000000-0000-0000-0000-000000000000}

sed -i "s@%RPC_HOST%@$RPC_HOST@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_PORT%@$RPC_PORT@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_SECRET%@$RPC_SECRET@g" /var/www/webui-aria2/configuration.js

mkdir -p /tmp/nginx
exec nginx -g "daemon off;"
