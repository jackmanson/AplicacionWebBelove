// const { createApp, ref } = Vue

// createApp({
//     setup() {
//     const message = ref('1')
//     return {
//         message
//     }
//     }
// }).mount('#app')

// const card = new Vue({
//     el: '#app2',
//     data:{
//         message: 'Hola Jasson desde Vue.js'
//     }
// })

// console.log( Vue )

const  app = Vue.createApp({
    data(){
        return {
            message: 'Hola como etas',
            quote: 'Batman',
            author: 'Bruce'
        }
    },
    methods:{
        changeQuote(){
            console.log( 'Hola mundo' )
            this.author = 'Fernando'
            this.capitalize()
        },
        capitalize(){
            this.quote = this.quote.toUpperCase()
        }
    }
})

app.mount('#myApp')


