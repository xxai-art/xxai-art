#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

#./i18n.sh

cd src
rm -rf conf.js
cp ../conf/ol.js conf.js
cd ..

./sh/build.sh

rm src/conf.js
