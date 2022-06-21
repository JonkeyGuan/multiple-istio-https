<template>
  <MyVue msg="My Vue App"/>
</template>

<script>
import MyVue from './components/MyVue.vue'

export default {
  name: 'App',
  components: {
    MyVue
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
