# Template Informe de práctica profesional DCC FCFM

> [Typst](https://typst.app) es software relativamente nuevo que está creciendo muy rápidamente. Por esto, no puedo asegurar retrocompatibilidad entre versiones del template, ni compatibilidad con la última versión de Typst.

Puedes ver un ejemplo de documento en [example.pdf](example.pdf).

Esta es una modificación de mi template original para [propuesta e informe de memoria](https://github.com/PuntitOwO/template-informe-memoria-fcfm).

## Ejemplo de uso

```typ
#import "conf.typ": conf
#import "constants.typ": pronombre

#let data = (
    titulo: "EL TÍTULO DE MI PRÁCTICA",
    autoria: (
        nombre: "Estudiante DCC",
        pronombre: pronombre.el
        correo: "estudiante@example.com",
        telefono: "+56 9 1234 5678",
    ),
    supervision: (
        nombre: "Supervisora Empresa",
        pronombre: pronombre.ella
        correo: "supervision@empresa.com",
        telefono: "+56 9 8765 4321",    
    ),
    practica: (
        numero: 1,
        codigo: "CC4901",
        carrera: "Ingeniería Civil en Computación",
        empresa: "EMPRE S.A.",
        periodo: "Enero - Febrero 2025",
    ),
    fecha: none,
    espaciado_titulo: 1fr,
)

#show: conf.with(metadata: data)

... el resto del documento empieza aquí ...
```

Puedes ver un ejemplo más completo en [example.typ](example.typ). Para aprender la sintáxis de Typst existe la [documentación oficial](https://typst.app/docs).

## Parámetros de configuración

El diccionario de configuración debe contener los siguientes campos:

| Parámetro             | Descripción                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `titulo`              | El título de la práctica                                                                                                                        |
| `autoria`             | Diccionario* con Nombre completo de estudiante, pronombre, teléfono y correo.                                                                   |
| `supervision`         | Diccionario* con Nombre completo, pronombre, teléfono y correo de quien supervisó.                                                              |
| `practica`            | Diccionario con información sobre la práctica.                                                                                                  |
| `fecha`               | Fecha en que se entrega el informe. Por defecto se usa la fecha actual.                                                                         |
| `espaciado-titulo`    | espacio extra que rodea al título y al nombre en la portada, 1fr es lo mismo que el resto de espacios, 2fr es el doble, 0.5fr es la mitad, etc. |

### Campos de `autoria` y `supervision`

| Parámetro             | Descripción                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `nombre`              | Nombre completo de la persona.                                                                                                                  |
| `pronombre`           | Pronombre de la persona. Se utiliza un valor del diccionario `pronombre`, usar `#import "constants.typ": pronombre`                             |
| `correo`              | Correo de la persona.                                                                                                                           |
| `telefono`            | Teléfono de la persona.                                                                                                                         |

### Campos de `practica`

| Parámetro             | Descripción                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `numero`              | 1 o 2 dependiendo de si es la primera o segunda práctica.                                                                                       |
| `codigo`              | Colocar el código del ramo de práctica. (CC4901 para práctica I, CC5901 para práctica II.)                                                      |
| `carrera`             | Colocar el nombre de la carrera.                                                                                                                |
| `empresa`             | Nombre de la empresa.                                                                                                                           |
| `periodo`             | Período en que se realizó la práctica. Por ejemplo: 'Diciembre 2022 - Enero 2023'.                                                              |

Ver [example.typ](example.typ) y [metadata.typ](metadata.typ) para un ejemplo de uso.

## Cómo usar el template

### Opción 1: Usar el template de forma local

[Instalar Typst CLI](https://github.com/typst/typst#installation), clonar este repositorio y trabajar de manera local en un editor.
En VSCode, puedes usar la extensión [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)

### Opción 2: Usar en la app web

> [!Warning]
> La última versión del proyecto disponible es la v1.1.1. Si deseas usar la última versión, deberás subir manualmente el proyecto a la [app web](https://typst.app).

1. Crear cuenta o iniciar sesión en [Typst.app](https://typst.app/)
2. Abrir el siguiente [Proyecto](https://typst.app/project/rsxXr837gOiym7xg84m3e4)
3. En el [Dashboard](https://typst.app/) podrás ver el proyecto "Template Prácticas DCC FCFM" en la sección "Shared with me".
   Puedes presionar el botón `Duplicate` (aparece al posicionar el mouse sobre el proyecto) para crear una copia del proyecto en tu cuenta.

## Changelog

### v2.0.0

* Se actualiza soporte para Typst v0.13.0
* Se reemplazan los parámetros de los métodos por un diccionario de configuración

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
