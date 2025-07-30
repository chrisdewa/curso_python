# Operaciones lógicas

En este tema aprenderás a utilizar operadores lógicos en Python para construir expresiones que devuelven valores booleanos, lo cual es fundamental para el control del flujo en programas.

## ¿Qué es una operación lógica?

Una operación lógica evalúa si una o más condiciones son verdaderas (`True`) o falsas (`False`). El resultado siempre será un valor booleano.

En un flujograma simboliza una encrucijada:

```{mermaid}
flowchart TD
    A[Comprar objeto] --> B{¿Suficiente Dinero?}
    B -- Verdadero --> C[Comprar]
    B -- Falso --> D[Buscar otra opción]
	D --> E[Siguiente Opción] --> B
```

## Operadores lógicos

### `and`

Devuelve `True` solo si ambas condiciones son verdaderas.

```python
True and True   # True
True and False  # False
```

### `or`

Devuelve `True` si al menos una de las condiciones es verdadera.

```python
False or True   # True
False or False  # False
```

### `not`

Invierte el valor lógico de una condición.

```python
not True   # False
not False  # True
```

## Tablas de verdad

Las tablas de verdad ayudan a visualizar el resultado de combinar distintos valores lógicos. Asumamos que existen dos variables `A` y `B` que pueden tomar valores tipo `bool`. La siguiente tabla representa las operaciones posibles:

| A     | B     | A and B | A or B | not A |
|-------|-------|---------|--------|--------|
| True  | True  | True    | True   | False  |
| True  | False | False   | True   | False  |
| False | True  | False   | True   | True   |
| False | False | False   | False  | True   |


## Combinando con comparaciones

Las operaciones lógicas son muy útiles combinadas con comparaciones:

```python
edad = 25
es_adulto = edad >= 18 and edad < 65
```

## Precedencia

`not` se evalúa antes que `and`, y `and` antes que `or`. Usa paréntesis si necesitas alterar el orden:

```python
True or False and False     # True (and se evalúa primero)
(True or False) and False   # False
```

## Actividad propuesta

Evalúa mentalmente el resultado de las siguientes expresiones:

1. `True and not False`
2. `False or not (True and False)`
3. `not True or False and True`

:::{admonition} Recuerda
:class: tip
- Las operaciones lógicas devuelven `True` o `False`.
- Se usan `and`, `or` y `not`.
- Son útiles en condiciones y control de flujo.
:::

## Comparaciones

Las comparaciones permiten evaluar relaciones entre valores y devuelven un valor booleano.

| Operador | Significado            | Ejemplo         | Resultado |
|----------|------------------------|------------------|-----------|
| `==`     | Igual a                | `5 == 5`         | `True`    |
| `!=`     | Distinto de            | `3 != 4`         | `True`    |
| `<`      | Menor que              | `2 < 5`          | `True`    |
| `<=`     | Menor o igual que      | `5 <= 5`         | `True`    |
| `>`      | Mayor que              | `7 > 3`          | `True`    |
| `>=`     | Mayor o igual que      | `6 >= 8`         | `False`   |

También puedes encadenar comparaciones:

```python
x = 10
5 < x < 20  # True
```

Esto es equivalente a escribir:

```python
5 < x and x < 20
```

## Ejercicio de comparaciones

Abre una sesión en el intérprete de python o corre este código en alguna libreta de jupyter.
Completa las siguientes expresiones para que devuelvan el valor booleano indicado:

```python
7 ___ 3     # True
4 ___ 4     # False
"gato" ___ "perro"   # True
10 ___ 2 * 5         # False
edad = 18  
edad ___ 18          # True
3 < 5 ___ 7          # True
```

## Valores lógicos intrínsecos

Todos los objetos en Python tienen un valor lógico (booleano) intrínseco. Es decir, aunque el valor no sea `True` o `False`, tienen una equivalencia con estos valores.

 Por ejemplo, el número `int` **0**, tiene una equivalencia con `False`, al igual que cualquier colección vacía, es decir `[]`, que es una lista vacía equivalente a `False`. La siguiente tabla compila los ejemplos más típicos, pruébalos en tu consola de Python o en alguna libreta.


| Valor           | Explicación                           | Valor lógico intrínseco |
|-----------------|---------------------------------------|-------------------------|
| `0`             | Número entero o flotante igual a cero | `False`                 |
| `1`, `2.7`, `-3`| Cualquier número diferente de cero    | `True`                  |
| `''`            | Cadena de texto vacía                 | `False`                 |
| `'hola'`        | Cadena de texto no vacía              | `True`                  |
| `[]`            | Lista vacía                           | `False`                 |
| `[1, 2, 3]`     | Lista con elementos                   | `True`                  |
| `{}`            | Diccionario vacío                     | `False`                 |
| `{'a': 1}`      | Diccionario con contenido             | `True`                  |
| `set()`         | Conjunto vacío                        | `False`                 |
| `{1, 2}`        | Conjunto con elementos                | `True`                  |
| `None`          | Valor nulo o ausencia de valor        | `False`                 |
| `object()`      | Instancia de objeto genérico          | `True`                  |

Recuerda: puedes usar la función `bool()` para verificar el valor lógico de cualquier objeto:

```python
bool(0)        # False
bool('')       # False
bool([1, 2])   # True
bool(None)     # False
```