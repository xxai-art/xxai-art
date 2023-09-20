<template lang="pug">
b
  h1 测试
</template>

<script lang="coffee">
> svelte > onMount
  @w5/fetch/fMsg
  ./lib/title.coffee

# onMount =>
#   {
#     host
#     logo
#   } = await fMsg '//127.0.0.1:7776/conf'
#   title host
#   return
</script>

<style lang="stylus">
@import 'styl/site.styl'
</style>

