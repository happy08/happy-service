<template>
  <div id="app">
    <router-view name="header" />
    <router-view name="header-service" />
    <router-view/>
    <router-view name="footer" />
    <router-view name="footer-service" />
  </div>
</template>

<script>
export default {
  name: 'App',
 data () {
    return {
      
    }
  },
  methods:{


  }

}
</script>

<style>

</style>
