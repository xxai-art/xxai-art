#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex
source env.sh
if ! command -v sponge &>/dev/null; then
  case $(uname -s) in
  Linux*)
    apt-get install -y moreutils
    ;;
  Darwin*)
    brew install moreutils
    ;;
  esac
fi

./svg-compress.sh
cd ..
bun x vite build
# ./i18n.sh

cd src
rm -rf conf.js
cp ../conf/ol.js conf.js
cd ..

cd public

bun x cep -c $DIR/sw.coffee -o .

esbuild sw.js \
  --minify \
  --format=iife |
  sed 's/^.\{6\}//; s/.\{6\}$//' >s.js

rm sw.js

cd ..

# bun x vite build

# cd dist
