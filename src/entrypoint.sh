#!/bin/bash
set -e

RPC_HOST=${RPC_HOST:-localhost}
sed -i "s@%RPC_HOST%@$RPC_HOST@g" /etc/nginx/sites-enabled/webui-aria2.conf

[[ -n $RPC_SECRET ]] && sed -ie "s@%RPC_SECRET%@$RPC_SECRET@g" /var/www/webui-aria2/configuration.js

exec nginx -g "daemon off;"
