#!/usr/bin/env coffee

> @w5/yml/Yml
  @w5/msgpack > pack
  @w5/write
  path > join dirname basename

{env} = process

DIR = env.XXAI_BLOG or process.cwd()

DIST = env.XXAI_BLOG_DIST or join(
  dirname(DIR)
  'dist.'+basename(DIR)
)

YML = Yml DIR

write(
  join DIST,'conf'
  pack(YML.conf)
)

console.log DIST
