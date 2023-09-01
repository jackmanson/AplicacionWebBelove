INSERT INTO `area_trabajo` (`id_area_trabajo`, `nombre_area_trabajo`) VALUES
(1, 'Administración'),
(2, 'Comerial'),
(3, 'Diseño'),
(4, 'Patronaje'),
(5, 'Corte'),
(6, 'Distribución'),
(7, 'Estampado'),
(8, 'Almacén'),
(9, 'Control y Empaque');

INSERT INTO `principal` (
    `id`,
    `navegador_menu`,
    `buscador`,
    `about_empresa`,
    `valores_empresa`,
    `procesos_produccion`,
    `areas_produccion`,
    `clientes_comentarios`,
    `oferta_tienda`,
    `contacto`,
    `fecha_actualizacion`)
VALUES(
    ``,
    `[{
    "url": "#about",
    "item": "ACERCA DE NOSOTROS"
    }, {
        "url": "#services",
        "item": "PRODUCTOS"
    }, {
        "url": "#portfolio",
        "item": "PORTAFOLIO"
    }, {
        "url": "#pricing",
        "item": "PRECIOS EN TIENDA"
    }, {
        "url": "#contact",
        "item": "CONTACTO"
    }]`,
    `[
        {"rotulo":"COMERCIAL MONELY","slogan":"Especialistas en procesos textiles"}
    ]`,
    `[{
        "titulo": "Acerca de la compañia",
        "reseña_1": "El Perú tuvo la fortuna de gozar una gran variedad de materiales para la creación sin límites de telares hechos por los mismos peruanos en aquellos tiempos que solo podía ser utilizada por los más altos niveles jerárquicos de cada grupo social de ese tiempo.",
        "reseña_2": "La empresa fue fundada el 21 de octubre del 2011, registrada dentro de las sociedades mercantiles y comerciales como una empresa individual de responsabilidad limitada, se encuentra dentro del sector venta al por mayor y realiza actividades de comercio exterior como importaciones y exportaciones. La empresa actualmente produce prendas de vestir como leggings, ajuares, kimonos y principalmente polos hechos con algodón y poliéster en su mayoría; pero, también trabajan con telas sintéticas según demanda; por el contrario, son pocas las veces que se produce con telas pesadas como franela o telas donde se aprovecha menos prendas por kilogramo. La esencia de esta empresa es que vende en su mayoría polos, ya sea para bebes, niños o jóvenes; no obstante, evita producir prendas donde el costo sea elevado en su producción como: dibujos bordados de gran tamaño, prendas con lavado y acabados muy especializados, estampados con pinturas de muy altísimo costo, entre otros más; por consecuencia, que muchos de los clientes no quieren afrontar precios elevados y en tiempos prolongados. Su mercado principal es el ámbito nacional donde distribuye toda su producción ya sea en provincia o en la capital; sin embargo, se exporta ocasionalmente a chile. Las estaciones donde hay más órdenes de compra se presenta en casi comienzos de otoño y finales de invierno; sin embargo, el mes más bajo del año es en enero. Actualmente cuenta con una cartera de clientes como Tottus, Saga Falabella, Ripley, Ripley chile, Oechsle, Maratton, Federación Peruana de Futbol, Paris, Umbro, Plaza Vea, entre otros que han generado importantes relaciones en el país."
    }]`,
    `[{
        "titulo": "Nuestros Valores",
        "tituloMision": "MISIÓN:",
        "reseñaMision": "Nuestra misión es la satisfacción del cliente final mejorando constantemente la calidad y dandole lo que necesita.",
        "tituloVision": "VISIÓN:",
        "reseñaVision": "Nuestra visión es producir textiles que den satisfacción a nuevos clientes que reconoscan el producto y quieran comprar."
    }]`,
        
    `[{
        "claseGli": "glyphicon-off",
        "subTitulo": "DISEÑO",
        "reseña": "Preparamos artes y fichas al detalle."
    }, {
        "claseGli": "glyphicon-heart",
        "subTitulo": "CORTE",
        "reseña": "Nuestra área de corte dispone un stock variado de telas y colores."
    }, {
        "claseGli": "glyphicon-lock",
        "subTitulo": "ESTAMPADO",
        "reseña": "Nuestras máquinas estampan 15000 predas por día."
    }, {
        "claseGli": "glyphicon-leaf",
        "subTitulo": "CONFECCIÓN",
        "reseña": "Nuestra confección se realiza en tiempos según el requerimieto."
    }, {
        "claseGli": "glyphicon-certificate",
        "subTitulo": "ACABADO",
        "reseña": "Empaque con codigos electrónicos."
    }, {
        "claseGli": "glyphicon-wrench",
        "subTitulo": "CALIDAD",
        "reseña": "Control de calidad en cada etapa del proceso productivo."
    }]`,
    `[{
        "srcImagen": "vistas/img/02_diseñoarea.jpeg",
        "etiqAlt": "Equipo de diseño",
        "subTitulo": "Diseño",
        "reseña": "Equipo de Diseño."
    }, {
        "srcImagen": "vistas/img/03_corte.jpeg",
        "etiqAlt": "Preparado de telas",
        "subTitulo": "Corte",
        "reseña": "Preparado de telas."
    }, {
        "srcImagen": "vistas/img/01_estampado.jpeg",
        "etiqAlt": "Área de estampado",
        "subTitulo": "Estamapado",
        "reseña": "Pulpo de 18 brazos."
    }]`,
    ``,
    `[{
        "titulo": "Polos",
        "item_1": "Jersey",
        "item_2": "Coverturas",
        "item_3": "Colores naturales",
        "item_4": "Pasteles",
        "item_5": "Todas las tallas",
        "item_6": "Desde",
        "item_7": "S/. 4.00"
    } {
        "titulo": "Leggings",
        "item_1": "Jersey",
        "item_2": "Coverturas",
        "item_3": "Colores naturales",
        "item_4": "Pasteles",
        "item_5": "Todas las tallas",
        "item_6": "Desde",
        "item_7": "S/. 12.00"
    } {
        "titulo": "Conjuntos",
        "item_1": "Jersey",
        "item_2": "Coverturas",
        "item_3": "Colores naturales",
        "item_4": "Pasteles",
        "item_5": "Todas las tallas",
        "item_6": "Desde",
        "item_7": "S/. 20.00"
    }]`,
    ``);
