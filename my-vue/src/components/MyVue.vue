<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h3>Invoke My Hello</h3>
    <ul>
      <li><a href="https://my-hello-istio-system.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue" target="_blank" rel="noopener">my hello</a></li>
    </ul>
    <h3>Embedded My Hello</h3>
    <iframe src="https://my-hello-istio-system.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue">
      Embedded My Hello
    </iframe>
    <h3>Invoke My Ext Hello</h3>
    <ul>
      <li><a href="https://my-ext-hello-istio-system.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue-ext" target="_blank" rel="noopener">my ext hello</a></li>
    </ul>
    <h3>Embedded My Ext Hello</h3>
    <iframe src="https://my-ext-hello-istio-system.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue-ext">
      Embedded My Ext Hello
    </iframe>
    <h3>Invoke My Another Hello</h3>
    <ul>
      <li><a href="https://my-another-hello-istio-service.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue-another" target="_blank" rel="noopener">my another hello</a></li>
    </ul>
    <h3>Embedded My Another Hello</h3>
    <iframe src="https://my-another-hello-istio-service.apps.rosa-5mtns.4wdf.p1.openshiftapps.com/vue-another">
      Embedded My Another Hello
    </iframe>
  </div>
</template>

<script>
export default {
  name: 'MyVue',
  props: {
    msg: String 
  }
}
</script>

<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
