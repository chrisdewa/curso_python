
# Python

## ¿Qué es Python?

Python es un lenguaje de programación de propósito general, creado en 1991 por Guido van Rossum. Es uno de los lenguajes más utilizados actualmente por su claridad, versatilidad y la enorme cantidad de bibliotecas disponibles.

Se usa en múltiples áreas: ciencia de datos, automatización, desarrollo web, inteligencia artificial, análisis estadístico y muchas más.

## Características principales

- **Legible**: Su sintaxis es clara y cercana al lenguaje natural.
- **Interpretado**: El código se ejecuta línea por línea.
- **Tipado dinámico**: No es necesario declarar tipos de variables.
- **Multiplataforma**: Corre en Windows, macOS y Linux.

## Sintaxis básica

:::{admonition} ¡Atención!
:class: tip

La siguiente sección pude verse muy técnica, pero su función es para consulta rápida más tarde en el curso.
Sobre todo recuerda las tablas de tipos y de operadores.

El objetivo de esta lección **no es que memorices nada de eso por ahora**.

:::

### Variables

Para asignar un valor a una variable se utiliza el símbolo `=`.

Por ejemplo:
```python
a = 3
```
Aquí se define una variable llamada `a` a la que se le asigna el valor `3`.

Los nombres de las variables deben iniciar con letras, no con números; es decir, `0variable` sería inválido.

Además, no pueden llamarse igual que las palabras reservadas del lenguaje, como `or`, `if`, `while`, etc.

#### Tipos
Como comentamos, Python está orientado a objetos. Todo es un objeto y cada objeto tiene su propio tipo, que se puede consultar con la función `type()`.

(tema2-tipos-target)=
##### Tipos básicos
En Python existen algunos tipos básicos:

###### Valores individuales

| Tipo      | Ejemplo        | Función |
|-----------|----------------|---------|
| `int`     | `3`            | Números enteros, pueden ser positivos, negativos y cero. |
| `float`   | `0.12`         | Números con decimales. |
| `bool`    | `True`, `False`| Valores lógicos, equivalentes a `1` y `0`. |
| `str`     | `'hola mundo'` | Texto (strings), incluyendo la cadena vacía. |
| `NoneType`| `None`         | Representa un valor nulo, algo que no existe. |

###### Colecciones
Las colecciones son tipos que contienen otros datos.

| Tipo    | Ejemplo           | Función |
|---------|-------------------|---------|
| `list`  | `[1, 2, 3]`       | Arreglo ordenado y mutable. |
| `tuple` | `(1, 2, 3)`       | Arreglo ordenado pero inmutable. |
| `set`   | `{1, 2, 3}`       | Conjunto de valores únicos, no ordenados. |
| `dict`  | `{'a': 1, 'b': 2}`| Mapeo entre llaves únicas y valores asociados. |

##### Acceder a valores dentro de secuencias:

**Listas y tuplas**

Para obtener un dato almacenado dentro de una lista o tupla, utilizamos el operador de *indización*. **CONCEPTO CLAVE**: los índices en Python se enumeran desde el 0 hasta `n-1`, donde `n` es el número de elementos.

Por ejemplo:
```python
frutas = ['Manzana', 'Pera', 'Naranja']

print("Fruta 2:", frutas[1])
```
El resultado será: `Fruta 2: Pera`. Esto es porque el primer elemento tiene índice `0`, el segundo `1`, y así sucesivamente.

**Diccionarios**

Los diccionarios están compuestos por llaves y valores. Para acceder a un valor, se utiliza la llave correspondiente.

Ejemplo:
```python
diccionario = {'alfa': 1, 'beta': 2, 'gama': 3}

print('Beta es la letra griega número:', diccionario['beta'])
```
El resultado será: `Beta es la letra griega número: 2`.

(operadores-target)=
### Operadores 

Los operadores en Python se aplican con una prioridad determinada (de mayor a menor):

| Nivel | Operador(es)         | Descripción                               | Ejemplo                   |
|-------|----------------------|-------------------------------------------|---------------------------|
| 1     | `()`                 | Agrupación con paréntesis                 | `(a + b) * c`             |
| 2     | `**`                 | Exponenciación                            | `2 ** 3` → `8`            |
| 3     | `+`, `-` (unarios)   | Positivo y negativo                       | `-x`, `+y`                |
| 4     | `~`                  | Negación bit a bit                        | `~x`                      |
| 5     | `*`, `/`, `//`, `%`  | Multiplicación, división, división entera, módulo | `5 * 2`, `7 % 3`  |
| 6     | `+`, `-`             | Suma y resta                              | `4 + 3`                   |
| 7     | `<<`, `>>`           | Desplazamiento de bits                    | `x << 1`, `y >> 2`        |
| 8     | `&`                  | AND bit a bit                             | `x & y`                   |
| 9     | `^`                  | XOR bit a bit                             | `x ^ y`                   |
| 10    | `\|`                 | OR bit a bit                              | `x \| y`                  |
| 11    | `<`, `<=`, `>`, `>=` | Comparaciones relacionales                | `a < b`, `x >= 2`         |
| 12    | `==`, `!=`           | Igualdad y desigualdad                    | `x != y`                  |
| 13    | `not`                | Negación lógica                           | `not True` → `False`      |
| 14    | `and`                | Conjunción lógica                         | `x and y`                 |
| 15    | `or`                 | Disyunción lógica                         | `x or y`                  |
| 16    | `in`, `not in`       | Pertenencia                               | `'a' in 'casa'`           |
| 17    | `is`, `is not`       | Identidad de objetos                      | `x is None`               |
| 18    | `=`, `+=`, `-=`, etc.| Asignación                                | `x += 1`                  |

> En bibliotecas como **pandas** o **polars**, para combinar condiciones se deben usar los operadores bit a bit:
> - `&` en lugar de `and`
> - `|` en lugar de `or`
> - `~` en lugar de `not`
>
> Y siempre debes usar paréntesis:
>
> ```python
> df[(df["edad"] > 18) & (df["sexo"] == "F")]
> ```

### Funciones
Las funciones encapsulan secciones de código reutilizable. Se utilizan para ejecutar tareas que pueden repetirse varias veces.

La estructura básica es:

```python
def mi_funcion(a, b):
    resultado = a + b
    return resultado
```

Para ejecutar la función:
```python
mi_funcion(1, 2)
>>> 3
```

(builtins-target)=
#### Funciones nativas (built-in)

Python incluye una gran cantidad de funciones disponibles de forma nativa. Algunos ejemplos:

| Función     | Ejemplo                          | Utilidad |
|-------------|----------------------------------|----------|
| `print`     | `print("Hola, mundo")`           | Muestra información en pantalla. |
| `sum`       | `sum([1, 2, 3])`                 | Suma los elementos de una colección. |
| `len`       | `len([1, 2, 3])`                 | Devuelve la cantidad de elementos. |
| `max`       | `max([1, 2, 3])`                 | Máximo valor. |
| `min`       | `min([1, 2, 3])`                 | Mínimo valor. |
| `round`     | `round(3.14159, 2)`              | Redondea. |
| `abs`       | `abs(-5)`                        | Valor absoluto. |
| `map`       | `list(map(str, [1, 2, 3]))`      | Aplica función a cada elemento. |
| `filter`    | `list(filter(lambda x: x>2, [1,2,3]))` | Filtra según condición. |
| `sorted`    | `sorted([3, 1, 2])`              | Lista ordenada. |
| `reversed`  | `list(reversed([1,2,3]))`        | Lista invertida. |
| `any`       | `any([False, True])`             | `True` si al menos un valor lo es. |
| `all`       | `all([True, True])`              | `True` si todos lo son. |
| `type`      | `type(3.14)`                     | Tipo del objeto. |
| `isinstance`| `isinstance(3.14, float)`        | Verifica tipo. |
| `range`     | `list(range(1, 4))`              | Secuencia de enteros. |

Puedes revisar qué más tiene python en la esta [liga](https://docs.python.org/3/library/functions.html)

#### Comentarios

:::{admonition} Concepto crítico
:class: error

Documentar el código es una actividad fundamental del programador.

Esto significa explicar qué hace nuestro código.

Cuando escribimos el código casi siempre es fácil seguir su lógica y puede que nos parezca intuitivo, pero 3 meses después quizá no entendamos nada de lo que habíamos hecho.

Para ello lo ideal es que el código sea legible, con nombres descriptivos para las variables.

Pero otra herramienta son los comentarios, que aprenderás en esta sección.

:::

En python un comentario es un fragmento de texto en el código pero no se ejecuta ni cambia la lógica.

Ejemplo:

```python

mi_variable = 'Mi valor' # esta variable es un string

print(mi_variable)
# imprimirá "Mi valor", pero sin comillas.

```

Si ejecutas este código en la terminal, verás que el texto después del símbolo `#` no se ejecuta y puede estar incluso en la misma línea que el código.

:::{admonition} Para ejecutar en terminal
:class: info

Pasos:
1. Abre una terminal
2. navega a la carpeta del curso que creaste
    - ejemplo: `cd Documents/curso_python`
3. utiliza uv para entrar en el interprete de python `uv run python`

Consulta la sección [correspondiente](terminal-target) en el tema 1.

:::

## Ejemplo simple

```python
x = 10
y = 3

suma = x + y
es_mayor = suma > 10

print("La suma es:", suma)
print("¿Es mayor que 10?", es_mayor)
```

---

## Práctica personal

Vamos a escribir código funcional, calcularemos el índice de masa corporal de un paciente.

```python
nombre = "CPJ"    # solo las iniciales
edad = 32         # edad en años
sexo = 'Femenino' # sexo del paciente
peso = 65         # peso en kg
talla = 1.72      # talla en metros

# escribe ahora la variable de imc
# imc = ...

print(imc) # debe imprimir 21.971335857220122
```

:::{tip}
1. La fórmula de IMC es: $\frac{peso}{talla^2}$
2. Revisa la tabla de [operadores](#operadores-target) busca el operador de división y exponenciación.
:::
