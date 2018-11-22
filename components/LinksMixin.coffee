export default
  data: ->
    links: {
      nuxtjs: 'https://nuxtjs.org/'
      github: 'https://github.com/nuxt/nuxt.js'
    }
  methods:
    getLink:(type) -> @links[type]
