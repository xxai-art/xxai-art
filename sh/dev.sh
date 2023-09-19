#!/usr/bin/env bash
DIR=$(dirname $(realpath "$0"))

cd $DIR/..

set -ex
kill -9 $(lsof -i:$VITE_PORT -t) 2>/dev/null | true

bash -c "sleep 1.5 && open http://127.0.0.1:$VITE_PORT"

bunx concurrently --kill-others \
  ./sh/openresty.sh \
  -r "bunx vite" # "bunx coffee -wc vite" \
