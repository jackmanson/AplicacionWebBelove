// const { createApp, ref } = Vue

// createApp({
//     setup() {
//     const message = ref('Hello Mundo desde vue!')
//     return {
//         message
//     }
//     }
// }).mount('#app')

const app = Vue.createApp({
    // template: `
    // `
    watch: {},
    setup() {}, // COMPOSITION API
    data(){
        return {
            title: 'Registrar Cliente'
        }
    },
    methods: {
        listaCitas(){
        //   this.title_lista = 'Lista de Citas'
        }
      
    } // OPTION API
  })
  
  app.mount("#containerRegistroCliente")
  
  
  





