#!/bin/sh
set -e

RPC_HOST=${RPC_HOST:-127.0.0.1}
sed -i "s@%RPC_HOST%@$RPC_HOST@g" /var/www/webui-aria2/configuration.js

RPC_PORT=${RPC_PORT:-6800}
sed -i "s@%RPC_PORT%@$RPC_PORT@g" /var/www/webui-aria2/configuration.js

RPC_SECRET=${RPC_SECRET:-}
sed -i "s@%RPC_SECRET%@$RPC_SECRET@g" /var/www/webui-aria2/configuration.js

/usr/sbin/nginx -g "daemon off;"
