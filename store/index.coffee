# この coffee ファイルは動かない
import Vuex from 'vuex'

createStore = () =>
  new Vuex.Store
    state: () =>
      texts:
        nuxt: 'Nuxt.js'
        coffee: 'CoffeeScript'
    getters:
      exclamationMarkTextCoffee:(state) -> state.texts[key] + '!!'

export default createStore
