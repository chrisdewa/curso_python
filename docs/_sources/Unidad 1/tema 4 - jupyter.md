---
parent: "Unidad 1: Aspectos Básicos"
nav_order: 4
---

# Jupyter

Jupyter es una plataforma interactiva ampliamente utilizada en ciencia de datos, programación y educación. Permite combinar código ejecutable, texto enriquecido (Markdown), visualizaciones, ecuaciones matemáticas y otros elementos en un mismo documento: la libreta o *notebook*.

:::{admonition} Nota
:class: note
Ya realizamos la instalación de JupyterLab usando `uv` en el [tema 1](<tema 1 - preparación.md>). Si no lo hiciste en ese momento, puedes hacerlo ahora de la siguiente forma:

1. Abre tu terminal y navega usando `cd` al directorio del curso.
2. Ejecuta este comando: `uv add jupyterlab seaborn pandas scipy statsmodels`

Este comando instala las principales dependencias que requieres para este curso.
:::

## ¿Qué es Jupyter?

El nombre "Jupyter" proviene de **Julia**, **Python** y **R**, aunque actualmente soporta muchos más lenguajes. Las libretas Jupyter son documentos `.ipynb` que pueden abrirse y ejecutarse en una interfaz web.

Su principal ventaja es que permite **ver el resultado del código justo debajo de la celda que lo ejecuta**, facilitando la exploración y documentación simultánea.

:::{tip}
Consulta la [documentación oficial de Jupyter](https://jupyter.org) para más información.
:::


:::{admonite} Nota
¿Sabías que en 2021 la revista nature nombró el proyecto [jupyter](https://www.nature.com/articles/d41586-021-00075-2) como uno de los 10 herramientas informáticas más influyentes en la transformación de la ciencia?
:::

En jupyter escribimos código en "libretas" cada libreta permite escribir código, texto, fórmulas matemáticas, etcétera. Se guardan en archivos con extensión `ipynb`.

:::{admonition} Para saber más
:class: warning
- [JupyterLab](https://jupyterlab.readthedocs.io/)
- [Project Jupyter](https://jupyter.org/)
- [Guía básica de Jupyter en español (Ciencia de Datos)](https://cienciadedatos.net/documentos/py08_jupyter.html)
:::



## Diferencias entre Jupyter Notebook y JupyterLab

- **Jupyter Notebook** es la interfaz clásica.
- **JupyterLab** es una interfaz moderna, flexible y más potente.

Ambas permiten usar notebooks, pero **JupyterLab** agrega soporte para pestañas, explorador de archivos, consolas, y más.

:::{admonition} Concepto crítico
:class: error
A partir de este punto, en todo el libro, cuando se hable de "libretas", nos referiremos libretas jupyter. 
:::

## Tipos de celdas

En una libreta, hay principalmente dos tipos de celdas:

- **Celda de código**: permite escribir y ejecutar código en Python u otro lenguaje.
- **Celda de texto (Markdown)**: permite escribir texto con formato, listas, ecuaciones LaTeX, encabezados, enlaces, imágenes, etc.

Puedes cambiar el tipo de celda desde el menú desplegable que aparece en la barra superior de la interfaz.

## Cómo ejecutar código

Para correr una celda:

- Haz clic dentro de ella y presiona `Shift + Enter`.
- También puedes usar el botón ▶️ en la barra de herramientas.

:::{tip}
`Shift + Enter` ejecuta la celda y pasa a la siguiente, creando una nueva celda en caso necesario.
`Ctrl + Enter` solo ejecuta la celda sin moverte de lugar ni crear nuevas celdas.
:::

Cada vez que ejecutas una celda, su número de ejecución se actualiza (`In [1]`, `In [2]`, etc.). El kernel (núcleo de ejecución) mantiene el estado entre celdas, lo que permite ejecutar el código en cualquier orden, aunque se recomienda hacerlo de forma secuencial.

:::{admonition} Nota
:class: note
Piensa en el "kernel" como el intérprete específico de la libreta que estás usando. 
Si abres una nueva libreta, las variables de una no se pasan a otra porque cada una tiene su propio intérprete.

Conocer qué es el kernel es necesario porque hay muchas veces que interactuar con él es la vía para solucionar muchos problemas, tan sencillo como reiniciarlo o apagarlo.

Existen diferentes tipos de kernel, nosotros solo usaremos el kernel de python en este curso, pero existen kernels de los principales lenguajes de programación estadística como `julia` y `R`, así como muchos otros tipos de lenguajes de programación.
:::
 
## Cómo abrir JupyterLab

Desde la terminal, dentro del proyecto, es decir, la carpeta del curso, lánzalo con `uv`:

```bash
uv run jupyter lab
```

Esto abrirá la interfaz de JupyterLab en tu navegador. Ahí podrás:

- Crear nuevos notebooks
- Abrir archivos `.ipynb` ya existentes
- Editar scripts `.py`, archivos de texto, CSV, y más

## Buenas prácticas

- Ejecuta siempre tus notebooks de arriba hacia abajo para evitar errores por variables no definidas.
- Usa celdas Markdown para documentar tus procesos y facilitar su lectura.
- Guarda frecuentemente (`Ctrl + S`).
- Si el kernel se congela, puedes reiniciarlo desde el menú `Kernel > Restart Kernel`.

## Práctica personal

Entra en jupyter lab y explora la interfaz, crea una nueva libreta con el botón \[+\] y selecciona el kernel de python.
Escribe cualquiera de los ejemplos de python que hemos puesto hasta ahora como `print('hola mundo')`

