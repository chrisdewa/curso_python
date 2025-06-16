---
title: "Tema 2: Generalidades"
parent: "Unidad 1: Aspectos Básicos"
nav_order: 2
---

# Generalidades
**Tabla de contenidos**
* TOC
{:toc}

## Programación

## Algorítmica

## Python
Python es un lenguaje de programación de propósito general, es decir, se puede hacer casi cualquier cosa con él, desde páginas web hasta análisis de datos.

### Paradigmas

Python es multiparadigma, eso quiere decir que hay varias formas de programar, algunas se utilizan más fuertemente que otras.

#### Orientado a Objetos

En Python, todo es un objeto. Los objetos tienen ciertos *atributos* (características) y ciertos *métodos* (acciones que pueden realizar).

Por ejemplo, un objeto humano podría tener un atributo como `nombre` y un método como `saludar`.

Los objetos permiten abstraer lógica y compartimentar información, facilitando la reutilización y organización del código mediante clases e instancias.

#### Funcional

En la programación funcional, el código se estructura en funciones puras, es decir, funciones que reciben entradas y producen salidas sin modificar variables externas (sin efectos secundarios).

Python permite este paradigma mediante funciones de orden superior (`map`, `filter`, `reduce`), funciones `lambda` y el uso de estructuras inmutables como `tuple` y `frozenset`.

La programación funcional promueve la legibilidad, el uso de expresiones en lugar de instrucciones y puede facilitar la concurrencia al evitar efectos secundarios.

#### Imperativo

Este paradigma se basa en instrucciones secuenciales que modifican el estado del programa. Es la forma más común de programar, donde se detallan los pasos necesarios para lograr un resultado.

En Python, escribir un bucle `for` o usar condicionales `if` son ejemplos de programación imperativa.

#### Procedimental

Es un caso particular de la programación imperativa donde el código se organiza en funciones o procedimientos. Cada función realiza una tarea específica y el flujo del programa se gestiona mediante llamadas a estas funciones.

En Python, este estilo es muy común, especialmente en scripts pequeños o código estructurado sin clases.

## Conceptos básicos de Python

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

| Tipo    | Ejemplo                  | Función |
|---------|--------------------------|---------|
| `list`  | `[1, 2, 3]`              | Arreglo ordenado y mutable. |
| `tuple` | `(1, 2, 3)`              | Arreglo ordenado pero inmutable. |
| `set`   | `{1, 2, 3}`              | Conjunto de valores únicos, no ordenados. |
| `dict`  | `{'a': 1, 'b': 2}`       | Mapeo entre llaves únicas y valores asociados. |

##### Acceder a valores dentro de secuencias:

**Listas y tuplas**

Para obtener un dato almacenado dentro de una lista o tupla, utilizamos el operador de *indexación*. **CONCEPTO CLAVE**: los índices en Python se enumeran desde el 0 hasta `n-1`, donde `n` es el número de elementos.

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

### Operadores (ordenados por prioridad)

| Prioridad | Operación                | Sintaxis               | Descripción |
|-----------|--------------------------|------------------------|-------------|
| 1         | Llamadas, indexación, slicing | `f(x)`, `x[i]`, `x[i:j]` | Agrupación, acceso a elementos, rebanado |
| 2         | Exponenciación           | `a ** b`               | Eleva `a` a la potencia `b` |
| 3         | Signo positivo/negativo, inversión de bits | `+a`, `-a`, `~a` | Unarios: positivo, negativo, NOT bit a bit |
| 4         | Multiplicación, división, módulo, división entera | `*`, `/`, `%`, `//` | Operaciones aritméticas |
| 5         | Suma y resta             | `+`, `-`               | Aritmética básica |
| 6         | Shift bit a bit          | `<<`, `>>`             | Desplazamiento de bits a izquierda/derecha |
| 7         | AND bit a bit            | `&`                    | Operación AND a nivel de bits |
| 8         | XOR bit a bit            | `^`                    | Operación OR exclusivo a nivel de bits |
| 9         | OR bit a bit             | `|`                    | Operación OR a nivel de bits |
| 10        | Comparaciones            | `<`, `<=`, `>`, `>=`, `==`, `!=`, `is`, `is not`, `in`, `not in` | Evaluaciones lógicas y de pertenencia |
| 11        | NOT lógico               | `not x`                | Negación lógica |
| 12        | AND lógico               | `x and y`              | Conjunción lógica |
| 13        | OR lógico                | `x or y`               | Disyunción lógica |
| 14        | Asignación               | `=`, `+=`, `-=`, `*=`, `/=`, etc. | Asignación y operadores compuestos |
| 15        | Eliminación              | `del x`, `del x[i]`    | Elimina una variable o elemento |
| 16        | Expresiones lambda       | `lambda x: x + 1`      | Funciones anónimas |

> ⚠️ *Los paréntesis `()` siempre tienen la máxima prioridad y permiten alterar el orden de evaluación.*

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

### Clases
Las clases son tipos definidos por el programador.

Una clase es la plantilla que Python utiliza para construir objetos.

Los objetos tienen atributos (datos) y métodos (funciones). Para acceder a ellos se usa el operador `.`:

```python
humano.saludar()
```

Aquí hay un objeto llamado `humano` que tiene un método llamado `saludar`.

#### Atributos

Los atributos son valores asociados a un objeto:

```python
humano.nombre
>>> 'Christian'
```

#### Métodos

Los métodos son funciones dentro del objeto:

```python
humano.saludar()
>>> 'Hola! mi nombre es Christian!'
```

#### Definición de una clase

```python
class Humano:
    def __init__(self, nombre):
        self.nombre = nombre  # Atributo

    def saludar(self):       # Método
        return f'Hola! mi nombre es {self.nombre}'
```

#### Herencia

Una clase puede heredar atributos y métodos de otra clase:

```python
class Celula:
    def __init__(self, energia):
        self.energia = energia

    def metabolizar(self, cantidad):
        if self.energia >= cantidad:
            self.energia -= cantidad
            print(f"La célula ha metabolizado. Energía restante: {self.energia}")
        else:
            print("No hay suficiente energía.")

class CelulaMuscular(Celula):
    def contraerse(self):
        if self.energia > 5:
            self.energia -= 5
            print("La célula muscular se ha contraído.")
        else:
            print("No hay suficiente energía para contraerse.")

class Neurona(Celula):
    def transmitir_impulso(self):
        if self.energia > 3:
            self.energia -= 3
            print("La neurona ha transmitido un impulso nervioso.")
        else:
            print("No hay suficiente energía para transmitir el impulso.")

# Ejemplo de uso
miocito = CelulaMuscular(energia=20)
neurona = Neurona(energia=15)

miocito.metabolizar(5)
miocito.contraerse()

neurona.metabolizar(2)
neurona.transmitir_impulso()
```

Este ejemplo muestra cómo las clases `CelulaMuscular` y `Neurona` heredan de `Celula`, reutilizando el método `metabolizar` y agregando comportamientos propios.

## Siguientes pasos:
Continúa con la [libreta 0](https://github.com/chrisdewa/curso_python/blob/main/libretas/Tutorial%200%20-%20Hola%20Mundo.ipynb), hola mundo.



