
# Programación

:::{admonition} Concepto clave
:class: important
Programar es **dar instrucciones precisas y ordenadas a una computadora** para resolver un problema o automatizar una tarea.
:::


Programar no es solo escribir código. Antes de escribir cualquier línea, es necesario entender **qué se quiere resolver** y cómo se podría resolver.

## Flujo general de la programación

```{mermaid}
flowchart TD
  A["Problema o necesidad"] --> B["Idea de solución"]
  B --> C["Algoritmo"]
  C --> D["Código"]
  D --> E["Ejecución del programa"]
  E --> F["Resultado útil"]
```

:::{admonition} Ejemplo
:class: tip
Si quieres calcular el promedio de calificaciones de tus estudiantes, necesitas:
- Recibir los datos (números)
- Sumar y dividir
- Mostrar el resultado
:::

Eso se convierte en un **programa** al escribirlo en un lenguaje que la computadora entienda, como Python.


## Pseudocódigo

Antes de escribir código real, es común planear la lógica utilizando **pseudocódigo**: una forma de describir un algoritmo paso a paso usando lenguaje natural estructurado, sin seguir la sintaxis estricta de un lenguaje de programación.

El pseudocódigo:
- Es legible por humanos
- No se ejecuta en computadora
- Permite enfocarse en la lógica antes de preocuparse por detalles técnicos

Su escritura es libre y puede estar en español o cualquier idioma que se desee. 

:::{admonition} Concepto crítico
:class: error
El pseudocódigo debe ser claro, conciso, fácil de leer y entender.

**Si el pseudocódigo es difícil de leer o entender, debe reescribirse.**
:::

Revisa el ejemplo en el caso demostrativo.

## Caso demostrativo

Un alumno del doctorado en ciencias de la salud realiza un estudio de secuenciación masiva que produce un compendio de 300 diferentes archivos de excel con datos sobre las variantes genéticas analizadas por cada paciente.
Problema, debe unir todos los archivos en una sola base de datos.
Al comenzar a trabajar el alumno tarda una hora en procesar los primeros 30 archivos y calcula que le tomará 10 horas terminar de procesarlos.

**Flujograma:**
```{mermaid}
flowchart LR
  A[Por cada archivo] --> B[Extraer datos]
  B --> C[Copiar a base completa]
```

**Pseudocódigo:**
```
INICIAR
  OBTENER lista de archivos Excel en la carpeta
  PARA CADA archivo EN la lista:
    LEER archivo
    UNIR los datos en una sola base
  FIN
  GUARDAR base completa en un nuevo archivo Excel
TERMINAR
```

**Programa implementado:**
```python
import pandas as pd # librería para datos tabulados
import glob # librería para encontrar y manejar archivos 

# Obtener todos los archivos .xlsx en la carpeta actual
archivos = glob.glob("*.xlsx")

# Leer y combinar todos los archivos
df_completo = pd.concat([ # concat junta cada archivo en una sola tabla
    pd.read_excel(archivo).assign(archivo_origen=archivo)
    for archivo in archivos
], ignore_index=True)

# Guardar el resultado en un solo archivo
df_completo.to_excel("base_completa.xlsx", index=False) # escribe la nueva tabla a un archivo de excel
```

El alumno tomó 30min para diseñar el programa con prueba y error y el programa se ejecutó en menos de 1 minuto.


## Práctica personal
Escribe el pseudocódigo para preparar el sandwich de cacahuate del tema anterior.