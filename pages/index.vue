<template>
  <section class="container">
    <div>
      <app-logo/>
      <h1 class="title">
        use-coffee-in-nuxt
      </h1>
      <h2 class="subtitle">
        {{ $store.state.texts['nuxt'] }} + {{ $store.getters.exclamationMarkText('coffee') }}
      </h2>
      <div class="links">
        <a
          :href="getLink('nuxtjs')"
          target="_blank"
          class="button--green">Documentation</a>
        <a
          :href="getLink('github')"
          target="_blank"
          class="button--grey">GitHub</a>
      </div>
    </div>
  </section>
</template>

<script lang="coffee">
import AppLogo from '~/components/AppLogo.vue'
import LinksMixin from '~/components/LinksMixin.coffee'

export default
  name: 'index'
  mixins: [ LinksMixin ]
  components:
    'app-logo': AppLogo
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; /* 1 */
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
