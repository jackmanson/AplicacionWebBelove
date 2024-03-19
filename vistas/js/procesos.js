
const app = Vue.createApp({
  // template: `
  // `
  watch: {},
  setup() {}, // COMPOSITION API
  data(){
      return {
          title_lista: '',
          Citas: '0',
          Clientes: '0',
          Atencion: 0,
          Pedidos: 0,
          Promociones: 0,
          Descuentos: 0,
          Catalogo: 0,
          Productos: 0,
          Servicios: 0,
          Empleados: 0,
          Horarios: 0,
          Tareas: 0,
          botonCrear: ''
      }
  },
  methods: {
      listaCitas(){
        this.title_lista = 'Lista de Citas'
        this.botonCrear = 'Crear Cita'
        this.listasMenuApagadas();
        this.Citas = '1'
        document.getElementById('itemCitas').style.backgroundColor='#000000';
      },
      listaClientes(){
        this.title_lista = 'Lista de Clientes'
        this.botonCrear = 'Registrar Cliente'
        this.listasMenuApagadas();
        this.Clientes = '1'
        document.getElementById('itemClientes').style.backgroundColor='#000000';
      },
      listaAtencion(){
        this.title_lista = 'Lista de Atención al Cliente en Proceso'
        // this.botonCrear = 'Crear'
        this.listasMenuApagadas();
        this.Atencion = '1'
        document.getElementById('itemAtencion').style.backgroundColor='#000000';
      },
      listaPedidos(){
        this.title_lista = 'Lista de Pedidos'
        this.botonCrear = 'Crear Pedido'
        this.listasMenuApagadas();
        this.Pedidos = '1'
        document.getElementById('itemPedidos').style.backgroundColor='#000000';
      },
      listaPromocines(){
        this.title_lista = 'Lista de Promociones'
        this.botonCrear = 'Crear Promoción'
        this.listasMenuApagadas();
        this.Promociones = '1'
        document.getElementById('itemPromo').style.backgroundColor='#000000';
      },
      listaDescuentos(){
        this.title_lista = 'Lista de Descuentos'
        this.botonCrear = 'Crear Descuento'
        this.listasMenuApagadas();
        this.Descuentos = '1'
        document.getElementById('itemDesc').style.backgroundColor='#000000';
      },
      listaCatalogo(){
        this.title_lista = 'Catálogo'
        this.botonCrear = 'Agregar Producto'
        this.listasMenuApagadas();
        this.Catalogo = '1'
        document.getElementById('itemCata').style.backgroundColor='#000000';
      },
      listaProductos(){
        this.title_lista = 'Lista de Productos'
        this.botonCrear = 'Crear Producto'
        this.listasMenuApagadas();
        this.Productos = '1'
        document.getElementById('itemProduc').style.backgroundColor='#000000';
      },
      listaServicios(){
        this.title_lista = 'Lista de Servicios'
        this.botonCrear = 'Agregar Servicio'
        this.listasMenuApagadas();
        this.Servicios = '1'
        document.getElementById('itemServi').style.backgroundColor='#000000';
      },
      listaEmpleados(){
        this.title_lista = 'Lista de Empleados'
        this.botonCrear = 'Agregar Empleado'
        this.listasMenuApagadas();
        this.Empleados = '1'
        document.getElementById('itemEmplea').style.backgroundColor='#000000';
      },
      listaHorarios(){
        this.title_lista = 'Horarios de Empleados'
        this.botonCrear = 'Agregar Horario'
        this.listasMenuApagadas();
        this.Horarios= '1'
        document.getElementById('itemHorario').style.backgroundColor='#000000';
      },
      listaTareas(){
        this.title_lista = 'Lista de Tareas Asignadas'
        this.botonCrear = 'Agregar Tarea'
        this.listasMenuApagadas();
        this.Tareas= '1'
        document.getElementById('itemTareas').style.backgroundColor='#000000';
      },
      listasMenuApagadas(){
        this.Citas = '0'
        this.Clientes = '0'
        this.Atencion = '0'
        this.Pedidos = '0'
        this.Promociones = '0'
        this.Descuentos = '0'
        this.Catalogo = '0'
        this.Productos = '0'
        this.Servicios = '0'
        this.Horarios= '0'
        this.Empleados = '0'
        this.Tareas= '0'
        document.getElementById('itemCitas').style.backgroundColor=null;
        document.getElementById('itemClientes').style.backgroundColor=null;
        document.getElementById('itemAtencion').style.backgroundColor=null;
        document.getElementById('itemPedidos').style.backgroundColor=null;
        document.getElementById('itemPromo').style.backgroundColor=null;
        document.getElementById('itemDesc').style.backgroundColor=null;
        document.getElementById('itemCata').style.backgroundColor=null;
        document.getElementById('itemProduc').style.backgroundColor=null;
        document.getElementById('itemServi').style.backgroundColor=null;
        document.getElementById('itemEmplea').style.backgroundColor=null;
        document.getElementById('itemHorario').style.backgroundColor=null;
        document.getElementById('itemTareas').style.backgroundColor=null;
      }
  } // OPTION API
})

app.mount("#containerFull")


