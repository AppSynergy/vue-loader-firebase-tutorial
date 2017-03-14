<template>
  <div id="app">
    <h1>Hello, world! ☺ - {{ foo }}</h1>
  </div>
</template>

<script lang="coffee">

  Component =
    name: 'app'
    data: () ->
      foo: "your content here"

  export default Component

</script>
