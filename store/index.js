import Vuex from 'vuex';

const createStore = () => {
  return new Vuex.Store({
    state: () => {
      return {
        texts: {
          nuxt: 'Nuxt.js',
          coffee: 'CoffeeScript'
        }
      };
    },
    getters: {
      exclamationMarkText: (state) => (key) => {
        return state.texts[key] + '!!';
      }
    }
  });
};

export default createStore;
