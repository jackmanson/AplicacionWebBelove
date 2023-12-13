
const app = Vue.createApp({
  // template: `
  // `
  watch: {},
  setup() {}, // COMPOSITION API
  data(){
      return {
          title_lista: 'Lista de Citas',
          Citas: '1',
          Clientes: '0',
          Atencion: 0,
          Pedidos: 0,
          Promociones: 0,
          Descuentos: 0,
          Catalogo: 0,
          Productos: 0,
          Servicios: 0,
          Empleados: 0
      }
  },
  methods: {
      listaCitas(){
        this.title_lista = 'Lista de Citas'
        this.Citas = '1'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaClientes(){
        this.title_lista = 'Lista de Clientes'
        this.Citas = '0'
        this.Clientes = '1'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaAtencion(){
        this.title_lista = 'Lista de Atención al Cliente'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '1'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaPedidos(){
        this.title_lista = 'Lista de Pedidos'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '1'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaPromocines(){
        this.title_lista = 'Lista de Promociones'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '1'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaDescuentos(){
        this.title_lista = 'Lista de Descuentos'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '1'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaCatalogo(){
        this.title_lista = 'Catálogo'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '1'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaProductos(){
        this.title_lista = 'Lista de Productos'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '1'
        this.Servicios = '0'
        this.Empleados = '0'
      },
      listaServicios(){
        this.title_lista = 'Lista de Servicios'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '1'
        this.Empleados = '0'
      },
      listaEmpleados(){
        this.title_lista = 'Lista de Empleados'
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Empleados = '1'
      }
  } // OPTION API
})

app.mount("#containerFull")


