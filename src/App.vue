<template>
  <div id="app">
    <div class="container">
      <button v-on:click="googleSignin()" class="btn btn-primary">Signin</button>
      <h1>Hello, world! ☺ - {{ vegetable }}</h1>
    </div>
  </div>
</template>

<script lang="coffee">
  import FirebaseAPI from './Firebase.coffee'

  Component =
    name: 'app'
    data: () ->
      db: FirebaseAPI.database
      vegetable: null
    mounted: () ->
      @db.ref('vegetable').on 'value', (value) =>
        @vegetable = value
    methods:
      googleSignin: () ->
        FirebaseAPI.googleSignin()

  export default Component
</script>

<style lang="sass">
  @import '../node_modules/bootstrap/dist/css/bootstrap.css'
</style>
