<template>
  <div id="app">
    <div class="container">
      <h1>Hello, world! ☺ - {{ db.ref() }}</h1>
    </div>
  </div>
</template>

<script lang="coffee">
  import FirebaseAPI from './Firebase.coffee'

  Component =
    name: 'app'
    data: () ->
      db: FirebaseAPI.database

  export default Component
</script>

<style lang="sass">
  @import '../node_modules/bootstrap/dist/css/bootstrap.css'
</style>
