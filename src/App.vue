<template>
  <div id="app">
    <div class="container">
      <h1>Hello, world! ☺ - {{ foo }}</h1>
    </div>
  </div>
</template>

<script lang="coffee">
  Component =
    name: 'app'
    data: () ->
      foo: "your content here"

  export default Component
</script>

<style lang="sass">
  @import '../node_modules/bootstrap/dist/css/bootstrap.css'
</style>
