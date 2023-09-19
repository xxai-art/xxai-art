#!/usr/bin/env bash

DIR="$(dirname $(realpath ${BASH_SOURCE[0]}))"

set -o allexport
SITE=blog.xxai.art

CDN=/
VITE_PORT=7777

XXAI_BLOG=$DIR/md

GIT_PAGE=git@github.com:xxai-art/xxai-art.github.io.git
set +o allexport

#OSSPUT_BUCKET=xxai-blog-cdn
#BACKBLAZE_url=https://f004.backblazeb2.com/file/$OSSPUT_BUCKET

# BACKBLAZE_accessKeyId=
# BACKBLAZE_secretAccessKey=
# BACKBLAZE_endpoint=https://s3.us-west-004.backblazeb2.com

#SITE_OSSPUT_BUCKET=xxai-blog-web
# SITE_BACKBLAZE_url=https://f004.backblazeb2.com/file/$SITE_OSSPUT_BUCKET

#CLOUDFLARE_KEY=
#CLOUDFLARE_EMAIL=
