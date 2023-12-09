const app = Vue.createApp({
    // template: `
    // <h1>Hola mundo</h1>
    // <p>{{ 1+2}}</p>
    // <p>{{ [1,2,3,4] }}</p>
    // <p>{{ [1,2,3,4] }}</p>
    // <p>{{ {a:1,b:3} }}</p>
    // `
    watch: {},
    setup() {}, // COMPOSITION API
    data(){
        return {
            message: 'Vaida Libre!!!!!!',
            message1: 'woman',
            quote: "Im Batman",
            author: 'Bruce Wayns',
            titulo: 'PRACTICANDO CON VUE JS ES GENIAL'
        }
    },
    methods: {
        cambiaTitulo(event){
            console.log('Cambiando el titulo')
            console.log(event)
            this.titulo = 'Practicando con VUE es Fantastico'
            this.capitalizarMiTitulo()
        },
        capitalizarMiTitulo(){
            this.message1 = this.quote.toUpperCase()
        }
    } // OPTION API
})

app.mount("#myApp")