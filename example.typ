#import "conf.typ": conf
#import "metadata.typ": example-metadata

// Aquí se importan las guías para ayudar a escribir.
// Se pueden desactivar cambiando el valor de la variable `mostrar_guias` a `false`.
#import "guias.typ": *
#let mostrar_guias = true

#show: conf.with(metadata: example-metadata)

#guia(visible: mostrar_guias, guia_meta)

= Resumen

#guia(visible: mostrar_guias, guia_resumen)

= Introducción

#guia(visible: mostrar_guias, guia_intro)

= Descripción del problema

#guia(visible: mostrar_guias, guia_problema)

= Objetivos

#guia(visible: mostrar_guias, guia_objetivos)

== Objetivo General

#guia(visible: mostrar_guias, guia_objetivo_general)

== Objetivos Específicos

#guia(visible: mostrar_guias, guia_objetivos_especificos)

+ ...
+ ...

= Metodología

#guia(visible: mostrar_guias, guia_metodologia)

Se puede citar con `@`: @Turing38

Y dos citas juntas se unen: @CorlessJK97 @NewmanT42


= Descripción de la Solución

#guia(visible: mostrar_guias, guia_solucion)

= Reflexión

#guia(visible: mostrar_guias, guia_reflexion)

= Conclusiones

#guia(visible: mostrar_guias, guia_conclusiones)

#bibliography("bibliografia.yml", title: "Referencias")

= Anexos

#guia(visible: mostrar_guias, guia_anexos)
