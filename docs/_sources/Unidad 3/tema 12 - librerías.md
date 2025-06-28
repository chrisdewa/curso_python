# Tema 12 Librerías

:::{tip}
El fondo de este tema es simple:

**NO REINVENTES EL HILO NEGRO**
:::

Una bella realidad de la programación, es que casi todos los problemas abstractos que podemos encontrar ya han sido enfrentados por otros programadores y es común que cuando un problema es común, la solución ya se haya encontrado. Así, en lugar de tener que resolver el problema por nuestra propia cuenta, podemos echar mano de código que ya otras personas escribieron.

Tomemos por ejemplo el último ejercicio de la lección pasada, una función para la media.

Primero, resolvamos nosotros el problema, el cálculo de la media es así:

$\bar{x} = \frac{\sum{xi}}{n}$

Escrito en español: "Sumar cada número en x y dividir el total sobre el número de datos".

```python
def media(datos):
    total = 0
    n = 0
    for num in datos:
        total += num # ir sumando cada número al total
        n += 1 # ir sumando uno por cada número
    return total / n # devuelve la media

mis_datos = [6, 27, 42, 99, 105]
print(media(mis_datos))
```

Esto funciona correctamente pero en realidad no hace falta escribir tanto código. Python ya nos ofrece dos funciones `built-in`, es decir "de fábrica", que pueden hacer mucho del trabajo: `len` y `sum`. Recuerda que puedes consultar algunas otras funciones integradas en la [lección 2.3](#builtins-target)

- `len` recibe una colección y devuelve su tamaño.
- `sum` devuelve la suma de los elementos de un iterable (funciona con numéricos).

Así podemos reescribir la función:

```python
def media(datos):
    n = len(datos)
    total = sum(datos)
    return total / n

mis_datos = [6, 27, 42, 99, 105]
print(media(mis_datos))
```

Y así nos evitamos tener que escribir código más complejo.

Sin embargo, ni aún así es necesario que calculemos la función de la media, porque, como es un problema común, podemos buscar la solución en una **librería**.

## Qué es una librería

Una librería es un conjunto de funciones, clases y otros objetos que un programador ha puesto a disposición de otros programadores en un paquete con un nombre específico. Python tiene muchos "módulos" integrados que podemos importar sin necesidad de instalar nada más.

Para resolver el problema de la media, con Python puro, sin instalar nada más, podemos hacer lo siguiente:

```python
from statistics import mean

mis_datos = [6, 27, 42, 99, 105]
print(mean(mis_datos))
```

De esta forma, resolvemos nuestro problema sin necesidad de hacer los cálculos manualmente.

### Ejercicio

1. Abre una consola de Python, ya sea una libreta o en la terminal.
2. Importa la función de la media como en el ejemplo `from statistics import mean`.
3. Utiliza `help(mean)` para aprender sobre cómo funciona.

(modulos-target)=
## Librerías integradas (módulos)

Los módulos son las librerías que Python tiene instaladas de fábrica y que no requerimos hacer nada para tenerlas disponibles, solo importarlas.

Puedes consultar la lista completa de los módulos integrados [aquí](https://docs.python.org/3/py-modindex.html).

### Módulos útiles para análisis de datos en Python

| Módulo       | Descripción breve                                                                 |
|--------------|------------------------------------------------------------------------------------|
| `math`       | Funciones matemáticas básicas como `sqrt`, `log`, `exp`, `sin`, `cos`, etc.       |
| `statistics` | Cálculo de media, mediana, varianza, desviación estándar, moda, etc.              |
| `fractions`  | Manejo de fracciones exactas con `Fraction`, útil para evitar errores numéricos.  |
| `decimal`    | Aritmética decimal con alta precisión, útil en finanzas y cálculos sensibles.     |
| `random`     | Generación de números aleatorios, muestreo, permutaciones, etc.                   |
| `itertools`  | Herramientas para combinaciones, permutaciones y manejo eficiente de iteradores.  |
| `collections`| Estructuras especializadas como `Counter`, `deque`, `defaultdict`, etc.           |
| `datetime`   | Manipulación de fechas, horas y diferencias temporales.                           |
| `csv`        | Lectura y escritura de archivos CSV.                                               |
| `json`       | Lectura y escritura de archivos en formato JSON.                                  |

## Importar

Para importar una librería necesitamos primero tenerla instalada o elegir un módulo de Python como los que acabamos de revisar.

### Sintaxis

```python
import random 
from statistics import mean        
from itertools import cycle, repeat
from math import (                 
    sqrt as raiz,
    cos as coseno
)
```
En el primer ejemplo tenemos la forma más básica. La palabra clave import realiza la importanción de la librería random.
Todas las funciones, clases y demás objetos disponibles de esa librería se accederán desde la variable random.
Por ejemplo random.randint(0, 100) que devuelve un número aleatorio entre 0 y 100.

En el segundo ejemplo no importamos solamente el objeto mean de la librería statistics, no importamos todo como en el ejemplo anterior.

En el tercer ejemplo hacemos lo mismo, pero en lugar de solo un objeto, importamos dos diferentes objetos de la misma librería.

En el tercer ejemplo hacemos un cambio en el nombre del objeto, eso es a veces necesario para evitar conflictos con nuestro código, quizá tenemos una variable ya con el nombre sqrt o cos y necesitamos que el objeto importado tenga otro nombre distinto.

## Librerías externas

También es posible instalar librerías que no vienen con Python. Estas librerías **externas** han sido desarrolladas por la comunidad para extender las capacidades del lenguaje, especialmente en áreas como ciencia de datos, estadística avanzada, gráficos y machine learning.

Estas librerías no se pueden usar directamente a menos que primero se instalen. Puedes hacerlo con `pip` o con `uv`, que es la herramienta oficial que usamos en este curso.

### Instalación con `pip`

```bash
pip install nombre_de_la_libreria
```

Por ejemplo:

```bash
pip install scipy
```

### Instalación con `uv`

En este curso usamos `uv` como la herramienta oficial para gestionar dependencias. Es una alternativa rápida y moderna a `pip`.

Para instalar una librería externa con `uv`, usa el siguiente comando:

```bash
uv add nombre_de_la_libreria
```

Por ejemplo, para instalar `scipy`:

```bash
uv add scipy
```

Esto actualizará automáticamente tu archivo `pyproject.toml` y descargará el paquete de forma optimizada.


Algunas de las librerías más comunes para análisis de datos incluyen:

| Librería       | Enlace a la documentación oficial                                       | ¿Para qué sirve?                                                                          |
|----------------|-------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| `scipy`        | [scipy.org](https://scipy.org/)                                         | Herramientas científicas avanzadas: álgebra lineal, optimización, integrales, etc.        |
| `statsmodels`  | [statsmodels.org](https://www.statsmodels.org/stable/index.html)        | Modelado estadístico clásico: regresiones, ANOVA, series temporales, etc.                 |
| `matplotlib`   | [matplotlib.org](https://matplotlib.org/)                               | Generación de gráficos básicos y personalizables en 2D.                                   |
| `seaborn`      | [seaborn.pydata.org](https://seaborn.pydata.org/)                       | Gráficos estadísticos de alto nivel y con diseño atractivo, basado en matplotlib.         |
| `numpy`        | [numpy.org](https://numpy.org/)                                         | Manejo eficiente de arreglos numéricos y operaciones vectorizadas.                        |
| `sympy`        | [sympy.org](https://www.sympy.org/en/index.html)                        | Matemática simbólica, como resolver ecuaciones o derivar de forma simbólica.              |

## Ejercicio personal

1. Visita cada una de las páginas oficiales de las librerías listadas arriba.
2. Elige al menos dos que te llamen la atención.
3. Explora su documentación: busca una función, ejemplo o gráfico que te parezca útil.
