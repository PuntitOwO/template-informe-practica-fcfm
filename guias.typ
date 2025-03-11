#let guia(visible: true, body) = if visible [
    #set rect(width: 100%, stroke: black)
    #set par(justify: true, first-line-indent: 0pt)
    #block(breakable: false)[
      #stack(dir: ttb,
        rect(
          fill: black,
          radius: (top: 5pt, bottom: 0pt),
          text(fill: white, "Guía (deshabilitar antes de entregar)")
        ),
        rect(
          fill: luma(230),
          radius: (top: 0pt, bottom: 5pt),
          body
        )
      )
    ]
  ] else []

#let guia_meta = [
Se debe quitar todas las guías (estas cajas grises) antes de entregar el documento.

Para ello, se debe cambiar el valor de la variable `mostrar_guias` a `false`.

Además, hay que reemplazar el diccionario de metadata que se entrega a la función `conf`.
Para ver los parámetros de este diccionario, ver el archivo `metadata.typ`.

Como aproximación, se espera que el informe tenga de 8 a 14 páginas.
En las guías de cada sección se mostrará la información de las páginas sugeridas. No olvidar que es una sugerencia.

Se recomienda que el reporte de actividades se redacte en tercera persona.
]

#let guia_resumen = [
En el resumen deben enunciarse los temas principales trabajados, problema, solución, reflexión y conclusiones sobre la realización de la práctica.
El resumen debe contener lo esencial de cada sección del informe.

(extensión sugerida: 0.5 páginas)
]

#let guia_intro = [
Parte inicial de un texto en donde se informa acerca del contenido del informe.
- Se contextualiza al lector con los antecedentes generales acerca del trabajo de práctica realizado, y que será descrito en los otros capítulos del informe
- Se señala en qué empresa u organización realizaron las labores (se incluyen datos que no requieren de resguardo de confidencialidad por parte del/la estudiante).

(extensión sugerida: 1 página)
]

#let guia_problema = [
Requerimiento o necesidad a resolver durante el trabajo de práctica:
- Describir el problema específico (u oportunidad desaprovechada), y las consecuencias de éste para la empresa u organización.
- Explicar qué tan crítico y urgente era para la organización resolver dicho problema.
- Además, se deben plantear los desafíos técnicos y organizacionales que representó la labor desarrollada para resolver dicho problema o necesidad.

(extensión sugerida: 0.5 a 1 página)
]

#let guia_objetivos = [
Determinar el objetivo general y los objetivos específicos de la práctica; para ello es preciso considerar lo siguiente:
- El objetivo es una declaración sobre una meta o propósito a cumplir.
- Se debe plantear un objetivo general y los objetivos específicos de cada práctica. Estos se enuncian en infinitivo: por ejemplo, analizar, describir, aplicar.

Es preciso señalar que los objetivos no son tareas a desarrollar. Cada objetivo
específico aporta al logro del objetivo general.

(No hay que poner texto acá. Se puede empezar directamente con el objetivo general.)

(extensión sugerida: 0.5 páginas)
]

#let guia_objetivo_general = [
Un _resumen conciso_ (no más de un párrafo) de la meta principal del trabajo, es decir, qué quieres lograr con el trabajo (o qué significa \"éxito\" en el contexto del trabajo).

El objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.

('Hacer la práctica' no es una repuesta válida. #emoji.face.sad)
]

#let guia_objetivos_especificos = [
Una _lista_ de los hitos principales que se quieren lograr para (intentar) cumplir con el objetivo general. Divide el objetivo general en varios hitos que formarán las etapas del trabajo.

Cada objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.

No se debería escribir más de un párrafo por hito.

Los objetivos específicos deberían \"sumar\" al objetivo general.
]

#let guia_metodologia = [
Describir la metodología:
- Se deben describir los pasos/etapas seguidos en el trabajo encomendado (tareas a realizar y su secuencia).
- Explicar si la metodología fue dada al/la estudiante por su supervisor/a o jefe directo o fue una propuesta propia (justificar).
- Explicar si la metodología fue la apropiada para alcanzar los objetivos planteados.
- Explicar cómo se puede evaluar la calidad del resultado obtenido en esta práctica.

(extensión sugerida: 0.5 a 1 página)
]

#let guia_solucion = [
Describir la solución obtenida, en términos de su diseño (si es un producto) y/o en términos de los resultados obtenidos (si es un estudio). Presentar la solución señalando sus fundamentos teórico-técnico.
- Describir la estructura de la solución (estructura macro).
- Describir los componentes de la solución (estructura detallada).
- Describir el comportamiento de la solución (dinámica), cuando corresponda.
- Indicar qué tecnologías se utilizaron y justificar su elección.
- Describir los resultados intermedios y finales obtenidos.
- Indicar las fortalezas y debilidades de la solución.

(extensión sugerida: 3 a 5 páginas)
]

#let guia_reflexion = [
- Describir los obstáculos encontrados, cómo fue el proceso y período de práctica y qué cambios no previstos ocurrieron.
- Describir el proceso de inserción en la empresa y la interacción que pudo alcanzar con el equipo.
- Explicar si fue proactivo en la realización de las tareas asignadas en el lugar de práctica y de si fue puntual en su asistencia al lugar de trabajo.
- Mencionar si enfrentó algún dilema ético, describiendo la situación y cómo se resolvió.
- Indicar y explicar qué cursos de la carrera fueron un aporte al momento de realizar la práctica, y cómo estos le ayudaron.
- Dar argumentos acerca de qué habilidades o conocimientos le faltaron para desempeñarse de manera adecuada en la práctica. Asimismo, explicar qué aspectos del ambiente laboral ayudaron (favorecieron) para compensar las debilidades que como practicante traía.
- Describir los nuevos conocimientos adquiridos en la práctica profesional.

*_Se solicita que este apartado pueda señalar su autopercepción del desempeño y las habilidades profesionales que implemento, tales como la ética, la comunicación oral y escrita, trabajo en equipo, entre otras. Respondiendo preguntas tales como_*:
¿qué aspecto de tu actuar en relación con el respeto y la responsabilidad, durante la experiencia de práctica destacarías?
¿En qué sentido su compromiso ético se vio fortalecido a partir de la experiencia de la práctica?
¿Cuáles son los principales desafíos que te planteas para el futuro en relación con lo técnico y personal?

(extensión sugerida: 1 a 3 páginas)
]

#let guia_conclusiones = [
En esta sección se deberá retomar y confirmar de manera sintética los aspectos centrales de la práctica profesional, y dar un cierre a lo expuesto en el informe; se incluye:
- Determinar si se lograron los objetivos planteados.
- Plantear aspectos de mejora a su desempeño y a la solución creada (proyección).

(extensión sugerida: 0.5 a 1 página)
]

#let guia_anexos = [
En esta sección se puede incluir material de adicional de apoyo al informe, por
ejemplo, capturas de pantalla, código fuente, o la descripción de casos de uso.
Este acápite es optativo.
]