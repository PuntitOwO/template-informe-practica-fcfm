#import "constants.typ": *

#let conf(
  metadata: (:), // metadata del documento
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

    
  let _informe = [#set text(weight: "bold", size: 24pt)
  Informe de Práctica Profesional #numbering("I", metadata.practica.numero)]
  let _ingenieria = text(size: 16pt, metadata.practica.carrera)
  let _supervisor(gen: pronombre.el) = [Supervisor#gen.guia]
  let _fecha = if metadata.fecha != none [#fecha] else [
    // Workaround para traducir meses
    #show "January": "Enero"
    #show "February": "Febrero"
    #show "March": "Marzo"
    #show "April": "Abril"
    #show "May": "Mayo"
    #show "June": "Junio"
    #show "July": "Julio"
    #show "August": "Agosto"
    #show "September": "Septiembre"
    #show "October": "Octubre"
    #show "November": "Noviembre"
    #show "December": "Diciembre"
    #datetime.today().display("[day] de [month repr:long] de [year]")
  ]
    
  let portada = align(center)[
    #stack(dir: ttb, spacing: 1fr,
      metadata.espaciado-titulo,
      _informe,
      0.2fr,
      text(size: 20pt, metadata.titulo),
      metadata.espaciado-titulo,
      text(size: 24pt, smallcaps(metadata.autoria.nombre)),
      0.2fr,
      _ingenieria,
      metadata.espaciado-titulo,
      [
        #set terms(separator: ": ")
        / Correo: #metadata.autoria.correo
        / Teléfono: #metadata.autoria.telefono
        / Empresa: #metadata.practica.empresa
        / Periodo de realización: #metadata.practica.periodo \ \
        / #_supervisor(gen: metadata.supervision.pronombre): #metadata.supervision.nombre 
        / Correo: #metadata.supervision.correo 
        / Teléfono: #metadata.supervision.telefono \ \
        #metadata.practica.codigo Práctica Profesional #numbering("I", metadata.practica.numero) \
        / Fecha de entrega: #_fecha
      ],
    )
  ]
  // Portada
  portada
  // Comienza el pre-documento, en página i
  set page(
    numbering: "i",
    margin: (top: 3cm, rest: 2.5cm),
  ) // Activar numeración de páginas y márgenes
  set par(
    justify: true,
    first-line-indent: 15pt,
    spacing: 2em, // Espacio entre párrafos
  ) // Formato de párrafos
  set cite(style: "council-of-science-editors") // esto deja las citas contiguas como [1, 2] o [1-3]
  pagebreak(weak: true) // Salto de página
  counter(page).update(1) // Reestablecer el contador de páginas

  let numbering-indent = 2em
  let page-num-indent = 1.2em
  show bibliography: set heading(numbering: "1.")
  set outline.entry(fill: none)
  show outline.entry.where(level: 1): it => box(height: 20pt, align(bottom, strong(it)))
  show outline.entry.where(level: 2): it => box(height: 10pt, h(15pt) + it)
    
  [ \ ]
  outline(depth: 2)

  set page(
    numbering: "1",
    margin: (top: 3cm, bottom: 2cm, rest: 2.5cm)
  )
  pagebreak(weak: true) // Salto de página
  counter(page).update(1) // Reestablecer el contador de páginas
  doc
}