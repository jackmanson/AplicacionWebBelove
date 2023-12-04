const { createApp, ref } = Vue

createApp({
    setup() {
    const message = ref('Hello Mundo desde vue!')
    return {
        message
    }
    }
}).mount('#app')

// const card = new Vue({
//     el: '#app2',
//     data:{
//         message: 'Hola Jasson desde Vue.js'
//     }
// })