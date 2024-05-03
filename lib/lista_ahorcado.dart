List ahorcado = [
  // Poste y base
  '''
     _
        
        

''',  '''
     __
        
        

''',
  // Cabeza
  '''
     ___
        

''',
  // Cuerpo
  '''
     ____
        
''',
  // Brazo izquierdo
  '''
     ______
        
       
''',
  // Brazo derecho
  '''
     ______
        0
       
''',
  // Pierna izquierda
  '''
     ______
        0
       /
''',
  // Pierna derecha
  '''
     ______
        0
       /|
''',
  // Ojo izquierdo
  '''
     ______
        0
       /|\\
       
''',
  // Ojo derecho
  '''
     ______
        0
       /|\\
       / 
''',
  // Boca
  '''
     ______
        0
       /|\\
       / \\
''',
];

// haz una lista','palabras que se utilizarán en el juego

List<String> listadoPalabras = [
  'hola',
  'adios',
  'casa',
  'perro',
  'gato',
  'raton',
  'elefante',
  'tigre',
  'leon',
  'jirafa',
  'cocodrilo',
  'serpiente',
  'tortuga',
  'ballena',
  'delfin',
  'tiburon',
  'pulpo',
  'calamar',
  'medusa',
  'estrella',
  'luna',
  'sol',
  'planeta',
  'satelite',
  'cometa',
  'asteroide',
  'galaxia',
  'universo',
  'nebulosa',
  'supernova',
  'agujero',
  'variable',
  'funcion',
  'clase',
  'objeto',
  'herencia',
  'polimorfismo',
  'encapsulamiento',
  'abstraccion',
  'interfaz',
  'implementacion',
  'constructor',
  'destructor',
  'metodo',
  'atributo',
  'parametro',
  'argumento',
  'retorno',
  'ciclo',
  'condicion',
  'booleano',
  'entero',
  'flotante',
  'cadena',
  'caracter',
  'lista',
  'conjunto',
  'mapa',
  'diccionario',
  'pila',
  'excepcion',
  'prueba',
  'depuracion',
  'compilacion',
  'interpretacion',
  'ejecucion',
  'importacion',
  'paquete',
  'modulo',
  'espacio',
  'nombre',
  'recursividad',
  'iteracion',
  'algoritmo',
  'estructura',
  'dato',
  'puntero',
  'referencia',
  'valor',
  'operador',
  'expresion',
  'sentencia',
  'bloque',
  'comentario',
  'documentacion',
  'optimizacion',
  'refactorizacion',
  'patron',
  'diseño',
  'arquitectura',
  'desarrollo',
  'produccion',
  'despliegue',
  'mantenimiento',
  'escalabilidad',
  'rendimiento',
  'eficiencia',
  'robustez',
  'seguridad',
  'privacidad',
  'accesibilidad',
  'usabilidad',
  'experiencia',
  'usuario',
  'cliente',
  'servidor',
  'red',
  'internet',
  'web',
  'base',
  'datos',
  'relacional',
  'sofa',
  'mesa',
  'silla',
  'cama',
  'almohada',
  'televisor',
  'refrigerador',
  'horno',
  'microondas',
  'lavadora',
  'secadora',
  'platos',
  'vasos',
  'cubiertos',
  'olla',
  'sarten',
  'computadora',
  'libros',
  'lampara',
  'reloj',
  'telefono',
  'jarron',
  'fotografias',
  'espejo',
  'toallas',
  'jabon',
  'shampoo',
  'cepillo',
  'dientes',
  'pasta',
  'dental',
  'escoba',
  'recogedor',
  'mopa',
  'cortinas',
  'alfombra',
  'armario',
  'cajones',
  'zapatos',
  'ropa',
  'gorras',
  'sombreros',
  'bufandas',
  'guantes',
  'chamarra',
  'camisa',
  'pantalones',
  'vestidos',
  'fregadero',
  'estufa',
  'cafetera',
  'tostadora',
  'licuadora',
  'exprimidor',
  'batidora',
  'cuchillos',
  'tijeras',
  'cuadros',
  'plantas',
  'florero',
  'radio',
  'estereo',
  'bocinas',
  'router',
  'modem',
  'cables',
  'cargadores',
  'control',
  'remoto',
  'juegos',
  'mesa',
  'consola',
  'videojuegos',
  'juguetes',
  'peluches',
  'balones',
  'bicicleta',
  'patineta',
  'patines',
  'triciclo',
  'carrito',
  'juguete',
  'muñecas',
  'bloques',
  'construcción',
  'rompecabezas',
  'libros',
  'colorear',
  'crayones',
  'plumones',
  'lapices',
  'gomas',
  'borrar',
  'sacapuntas',
  'regla',
  'compas',
  'calculadora',
  'papel',
  'cuadernos',
  'agendas',
  'calendarios',
  'clips',
  'engrapadora',
  'perforadora',
  'cinta',
  'adhesiva',
  'pegamento',
  'tijeras',
  'oficina',
  'carpetas',
  'archivadores',
  'sobres',
  'plumas',
  'boligrafos',
  'corrector',
  'resaltadores',
  'marcadores',
  'pinturas',
  'pinceles',
  'lienzo',
  'easel',
  'paleta',
  'pintura',
  'espátula',
  'pintura',
  'carboncillo',
  'pastel',
  'acuarelas',
  'oleos',
  'gouache',
  'témpera',
  'acuarela',
  'dibujo',
  'pastel',
  'calco',
  'lija',
  'origami',
  'construcción',
  'seda',
  'aluminio',
  'envolver',
  'periódico',
  'revista',
  'cómic',
  'manga',
  'anime',
  'storyboard',
  'guión',
  'gráfico',
  'personajes',
  'vestuario',
  'escenografía',
  'iluminación',
  'maquillaje',
  'peinado',
  'utilería',
  'escenografía',
  'iluminación',
  'sonido',
];