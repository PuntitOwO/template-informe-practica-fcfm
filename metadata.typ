#import "constants.typ": pronombre

// nota: cuando se habla del diccionario de una persona se refiere a un diccionario con los campos nombre, pronombre, correo y teléfono. 

#let example-metadata = (
  // El título de la práctica, en mayúsculas
  titulo: "TÍTULO DE LA PRÁCTICA",

  // El diccionario con información de la persona que escribe el documento
  autoria: (
    nombre: "Nombre Nombre Apellido Apellido",
    pronombre: pronombre.elle,
    correo: "estudiante@example.com",
    telefono: "+56 9 8765 4321",
  ),

  // El diccionario con información de la persona que realizó la supervisión
  supervision: (
    nombre: "Nombre Apellido Apellido",
    pronombre: pronombre.ella,
    correo: "supervision@empresa.com",
    telefono: "+56 9 8765 4321",
  ),

  // Información sobre la práctica
  practica: (
    // Número de la práctica, 1 o 2
    numero: 1,

    // Código de la práctica, CC4901 para la práctica I, CC5901 para la práctica II
    codigo: "CC4901",

    // Nombre de la carrera
    carrera: "Ingeniería Civil en Computación",

    // Nombre de la empresa
    empresa: "EMPRE S.A.",

    // Período en que se realizó la práctica
    periodo: "Enero - Febrero 2025",
  ),

  // Un string para una fecha, o la fecha actual si no se especifica
  fecha: none,

  // Espaciado extra antes del título y al rededor de autor
  espaciado-titulo: 1fr,
)