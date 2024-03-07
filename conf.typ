#let logos = (
  escudo: "imagenes/institucion/escudoU2014.svg",
  fcfm: "imagenes/institucion/fcfm.svg",
  dcc: "imagenes/institucion/dcc.svg",
)

#let pronombre = (
  el:   (titulo: "O", guia: ""),
  ella: (titulo: "A", guia: "a"),
  elle: (titulo: "E", guia: "e"),
)

#let guia(visible: true, body) = if visible [
  #set rect(width: 100%, stroke: black)
  #set par(justify: true, first-line-indent: 0pt)
  #block(breakable: false)[#stack(dir: ttb,
    rect(fill: black, radius: (top: 5pt, bottom: 0pt), text(fill: white, "Guía (deshabilitar antes de entregar)")),
    rect(fill: luma(230), radius: (top: 0pt, bottom: 5pt), body)
  )]] else []
    
#let conf(
  titulo: none, // Título de la práctica
  autor: none, // diccionario con nombre y pronombre, (nombre: "", pronombre: pronombre.<el/ella/elle>) 
  practica: 1, // puede ser práctica 1 o 2
  codigo: "CC4901", // CC4901 para práctica I, CC5901 para práctica II
  ingenieria: "Ingeniería civil en Computación", // Nombre de la carrera
  correo: "example@example.com", // Correo de autor
  telefono: "+56 9 8765 4321", // Número de teléfono de autor
  periodo: "Enero - Febrero 2024", // Periodo en que se realizó la práctica
  empresa: "Empre S.A.", // Nombre de la empresa
  supervisor: none, // (nombre: "nombre apellido", pronombre: pronombre.<el/ella/elle>)
  correo-supervisor: "example@example.com", // Correo de supervisor
  telefono-supervisor: "+56 9 8765 4321", // Número de teléfono de supervisor
  fecha: none, // si no se especifica, se usa la fecha de hoy
  espaciado_titulo: 1fr, // espacio extra que rodea al título y al nombre en la portada, 1fr es lo mismo que el resto de espacios, 2fr es el doble, etc.
  doc,
) = {
  let header = [
    #set text(size: 9pt)
    #stack(dir: ttb,
      stack(dir: ltr, spacing: 15pt,
        align(bottom+left, 
          stack(dir: ttb, spacing: 5pt,
            text("UNIVERSIDAD DE CHILE"),
            text("FACULTAD DE CIENCIAS FÍSICAS Y MATEMÁTICAS"), 
            text("DEPARTAMENTO DE CIENCIAS DE LA COMPUTACIÓN"),
          ),
        ),
        align(bottom+right, box(width: 5cm, image(logos.dcc))),
      ),
    5pt,
    line(length: 100%)
    )
  ]

  // Formato de página
  set page(
    paper: "us-letter",
    number-align: center,
    numbering: none,
    header: header,
    header-ascent: 10%,
    margin: (top: 3cm),
  )
  // Formato de texto
  set text(
    lang: "es",
    font: "New Computer Modern",
    size: 12pt,
  )
  
  // Formato de headings
  set heading(numbering: "1.")

  // Workaround para traducir meses
  show "January": "Enero"
  show "February": "Febrero"
  show "March": "Marzo"
  show "April": "Abril"
  show "May": "Mayo"
  show "June": "Junio"
  show "July": "Julio"
  show "August": "Agosto"
  show "September": "Septiembre"
  show "October": "Octubre"
  show "November": "Noviembre"
  show "December": "Diciembre"
    
  let _informe = [#set text(weight: "bold", size: 24pt)
  Informe de Práctica Profesional #numbering("I", practica)]
  let _ingenieria = text(size: 16pt, ingenieria)
  let _supervisor(gen: pronombre.el) = [Supervisor#gen.guia]
  let _fecha = if fecha != none [#fecha] else [#datetime.today().display("[day] de [month repr:long] de [year]")]
    
  let portada = align(center)[
    #stack(dir: ttb, spacing: 1fr,
      espaciado_titulo,
      _informe,
      0.2fr,
      text(size: 20pt, titulo),
      espaciado_titulo,
      text(size: 24pt, smallcaps(autor.nombre)),
      0.2fr,
      _ingenieria,
      espaciado_titulo,

      [
        #set terms(separator: ": ")
        / Correo: #correo
        / Teléfono: #telefono
        / Empresa: #empresa
        / Periodo de realización: #periodo \ \
        / #_supervisor(gen: supervisor.pronombre): #supervisor.nombre 
        / Correo: #correo-supervisor 
        / Teléfono: #telefono-supervisor \ \
        #codigo Práctica Profesional #numbering("I", practica) \
        / Fecha de entrega: #_fecha
      ],
    )
  ]
  // Portada
  portada
  // Comienza el documento, en página 1
  set page(
    numbering: "1",
    margin: (left: 3cm, top: 3cm, rest: 2cm),
  ) // Activar numeración de páginas y márgenes
  set par(
    justify: true,
    first-line-indent: 15pt,
  ) // Formato de párrafos
  show par: set block(spacing: 2em) // Espacio entre párrafos
  pagebreak(weak: true) // Salto de página
  counter(page).update(1) // Reestablecer el contador de páginas

  let numbering-indent = 2em
  let page-num-indent = 1.2em
  show selector(outline.entry): it => {
    let num = it.body.children.first()
    let title = link(it.element.location())[#for i in it.body.children.slice(1) {i}]
    box(width: numbering-indent, num)
    title
    box(width: 1fr, repeat[.])
    box(width: page-num-indent, align(right, it.page))
  }
  
  show selector(outline.entry.where(level: 1)): strong // Negrita para los títulos de nivel 1
    
  [ \ ]
  outline(
    depth: 2,
    indent: none,
  )

  show heading: it => {
    it
    par(text(size:0.35em, h(0.0em)))
  } // Workaround para que se aplique la indentación al primer párrafo luego de un heading
  doc
}