const { createApp, ref } = Vue

createApp({
    setup() {
    const message = ref('1')
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


