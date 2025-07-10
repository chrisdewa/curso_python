# Comprensiones en Python

Las comprensiones (`comprehensions`) son expresiones declarativas que permiten construir colecciones de forma concisa y legible. Usan la semántica de expresión de Python para crear listas, diccionarios, sets o generadores, sin necesidad de escribir bucles explícitos.

Es decir, en lugar de esto:
```python
new_list = []
for item in my_list:
    item += 10
    new_list.append(item)
```
Usando comprensiones, se transforma en:
```python
new_list = [item+10 for item in my_list]
```


Se consideran una herramienta idiomática y deben usarse cuando mejoran la expresividad del código, sin comprometer su legibilidad.


---

## Comprensión de listas

La forma más común. Genera una lista a partir de un iterable aplicando una transformación opcional y un filtro.

```python
[x * 2 for x in range(5)]  # [0, 2, 4, 6, 8]
```

También puede incluir condicionales:

```python
[x for x in range(10) if x % 2 == 0]  # pares
```

---

## Comprensión de diccionarios

Permite construir diccionarios usando la misma lógica declarativa.

```python
{x: x ** 2 for x in range(5)}  # {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}
```

Con un iterable de pares clave-valor:

```python
pares = [("a", 1), ("b", 2), ("c", 3)]
{clave: valor for clave, valor in pares}
```

También es útil para invertir diccionarios:

```python
d = {"uno": 1, "dos": 2, "tres": 3, "cuatro": 4}
{v: k for k, v in d.items() if v%2 == 0} # solo pares
```

---

## Generadores

En lugar de crear una colección en memoria, genera un iterador perezoso (lazy) que produce elementos a demanda.

:::{note}
A diferencia de las listas y las tuplas que tienen todos sus valores cargados en la memoria, los generadores solo tienen en la memoria el valor que se extrae en el momento. Se obtienen los valores deseados a demanda del programa.

```python
(x ** 2 for x in range(10))
```

:::{warning}
Nota que al usar paréntesis no se genera una tupla sino un generador
:::

Combinado con funciones agregadas:

```python
sum(x for x in range(1000) if x % 5 == 0) # solo suma los múltiplos de 5
```

Esto es más eficiente en memoria para flujos de datos grandes.

---

## Consideraciones de estilo y rendimiento

- Las comprensiones son más rápidas que los bucles tradicionales en estructuras pequeñas o medianas.
- No anides comprensiones más allá de dos niveles.
- Prefiere expresiones generadoras cuando no necesitas almacenar toda la secuencia en memoria.

---

## Ejemplos idiomáticos

### Extraer claves por condición:

```python
[k for k, v in dic.items() if v is not None]
```

### Flattening (una dimensión):

```python
[x for fila in matriz for x in fila]
```

### Conteo condicional:

```python
sum(1 for x in data if x > 0)
```

---

## Conclusión

Las comprensiones son una de las características que distinguen a Python como lenguaje expresivo. Su uso correcto promueve un estilo más funcional, claro y eficiente.

:::{admonition} Tip profesional
Si una comprensión no cabe cómodamente en una línea o requiere más de un `if`, considera usar una función auxiliar o un bucle explícito.
:::
