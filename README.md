# Template Informe de práctica profesional DCC FCFM

> [Typst](https://typst.app) es software relativamente nuevo que está creciendo muy rápidamente. Por esto, no puedo asegurar retrocompatibilidad entre versiones del template.

Puedes ver un ejemplo de documento en [example.pdf](example.pdf).

Esta es una modificación de mi template original para [propuesta e informe de memoria](https://github.com/PuntitOwO/template-informe-memoria-fcfm).

## Ejemplo de uso

```typ
#import "conf.typ": conf, pronombre
#show: conf.with(
    titulo: "El Título de mi Práctica",
    autor: (nombre: "Estudiante DCC", pronombre: pronombre.el),
    supervisor: (nombre: "Supervisora Empresa", pronombre: pronombre.ella),
)

... el resto del documento empieza aquí ...
```

Puedes ver un ejemplo más completo en [example.typ](example.typ). Para aprender la sintáxis de Typst existe la [documentación oficial](https://typst.app/docs).

## Parámetros de configuración

La función `conf` recibe los siguientes parámetros:

| Parámetro             | Descripción                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `titulo`              | El título de la práctica                                                                                                                        |
| `autor`               | Diccionario* con Nombre completo de estudiante y pronombre                                                                                      |
| `practica`            | 1 o 2 dependiendo de si es la primera o segunda práctica.                                                                                       |
| `codigo`              | Colocar el código del ramo de práctica. (CC4901 para práctica I, CC5901 para práctica II.)                                                      |
| `ingenieria`          | Colocar el nombre de la carrera.                                                                                                                |
| `correo`              | Colocar el correo de autor.                                                                                                                     |
| `telefono`            | Colocar el número de teléfono de autor.                                                                                                         |
| `periodo`             | Período en que se realizó la práctica. Por ejemplo: 'Diciembre 2022 - Enero 2023'.                                                              |
| `empresa`             | Nombre de la empresa.                                                                                                                           |
| `supervisor`          | Diccionario* con Nombre y pronombre del supervisor                                                                                              |
| `correo-supervisor`   | Colocar el correo de supervisor.                                                                                                                |
| `telefono-supervisor` | Colocar el número de teléfono de supervisor.                                                                                                    |
| `fecha`               | Fecha en que se entrega el informe. Por defecto se usa la fecha actual.                                                                         |
| `espaciado_titulo`    | espacio extra que rodea al título y al nombre en la portada, 1fr es lo mismo que el resto de espacios, 2fr es el doble, 0.5fr es la mitad, etc. |

*Nota: El diccionario debe contener los campos `nombre` y `pronombre` con el nombre completo y pronombre de la persona.
El pronombre puede ser `pronombre.el`, `pronombre.ella` o `pronombre.elle` y para usarse debe ser importado con `#import "conf.typ": pronombre`.
Ver [example.typ](example.typ) para un ejemplo de uso.

## Cómo usar el template

### Opción 1: Usar el template de forma local

[Instalar Typst CLI](https://github.com/typst/typst#installation), clonar el repositorio y trabajar de manera local en un editor.
Adicionalmente, puedes instalar un [LSP](https://github.com/nvarner/typst-lsp).

### Opción 2: Usar en la app web

Esta opción no se recomienda del todo, ya que no siempre estará actualizada con la última versión del template.

1. Crear cuenta o iniciar sesión en [Typst.app](https://typst.app/)
2. Abrir el siguiente [Proyecto](https://typst.app/project/rsxXr837gOiym7xg84m3e4)
3. En el [Dashboard](https://typst.app/) podrás ver el proyecto "Template Prácticas DCC FCFM" en la sección "Shared with me".
   Puedes presionar el botón `Duplicate` (aparece al posicionar el mouse sobre el proyecto) para crear una copia del proyecto en tu cuenta.

## Changelog

### v1.1.1

* Se ajusta el estilo de citas a `"council-of-science-editors"`, esto deja las citas contiguas como `[1, 2]` o `[1-3]`
* Se arregla error en la tabla de contenido cuando se añade bibliografía. [(Issue #2)](https://github.com/PuntitOwO/template-informe-practica-fcfm/issues/2)
* Se encapsula *workaround* de fecha para evitar estropear nombres como "Augusto". [(Issue #3)](https://github.com/PuntitOwO/template-informe-practica-fcfm/issues/3)

### v1.1.0

* Se actualizan los márgenes de página y la enumeración de páginas antes del inicio del contenido.

### v1.0.1

* Se añade el texto en negrita a las entradas principales de la tabla de contenido.

### v1.0.0

* Primera versión
