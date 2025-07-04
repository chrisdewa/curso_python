(tema-f-string-target)=
# f-string: Dar formato al texto

En programación es muy frecuente tener que elaborar reportes o mensajes que incluyan valores que vamos obteniendo durante la ejecución de nuestro código. Una de las formas más sencillas y modernas de construir cadenas de texto (`str`) con variables o expresiones es usando **f-strings**.

## ¿Qué es una f-string?

Las **f-strings** (abreviatura de *formatted strings*) fueron introducidas en Python 3.6. Se trata de una forma rápida y legible de insertar valores directamente dentro de una cadena de texto, utilizando una sintaxis clara y eficiente.

### Sintaxis básica

Solo necesitas anteponer una `f` o `F` a una cadena entre comillas, y luego encerrar las variables o expresiones entre llaves `{}` dentro de la cadena.

```python
nombre = "Ana"
edad = 30
mensaje = f"{nombre} tiene {edad} años."
print(mensaje)
```

**Salida:**
```
Ana tiene 30 años.
```


## Documentación oficial

:::{important}
Por favor revisa la [documentación oficial](https://docs.python.org/3/tutorial/inputoutput.html#formatted-string-literals) para todos los tipos de formato posibles y cómo utilizarlos.
Esta es una herramienta muy útil y poderosa, pero puede ser confusa al principio.

:::

## Ventajas

- Es más legible y eficiente
- Permite incluir expresiones directamente dentro de las llaves.


## f-strings con expresiones

No solo puedes insertar variables, también puedes escribir expresiones completas:

```python
a = 5
b = 3
print(f"La suma de {a} + {b} es {a + b}")
```

**Salida:**
```
La suma de 5 + 3 es 8
```

---

## f-strings con formatos numéricos

También puedes controlar cómo se muestra un número: número de decimales, porcentaje, notación científica, etc.

### Ejemplo: Redondear decimales

```python
pi = 3.14159265
print(f"El valor de pi es aproximadamente {pi:.2f}")
```

**Salida:**
```
El valor de pi es aproximadamente 3.14
```

### Ejemplo: Porcentajes

```python
aprobados = 18
total = 20
print(f"Aprobaron el {aprobados/total:.1%} del grupo.")
```

**Salida:**
```
Aprobaron el 90.0% del grupo.
```

---

## f-strings con alineación y relleno

Puedes ajustar el texto para que tenga una longitud fija, se alinee a la izquierda, derecha o al centro, o incluso rellenar con otros caracteres.

```python
producto = "Manzana"
precio = 7.5
print(f"{producto:<10} ${precio:>6.2f}")
```

**Salida:**
```
Manzana   $  7.50
```

---

## f-strings multilínea

Puedes usar f-strings también en cadenas de varias líneas, útil para reportes más largos:

```python
nombre = "Carlos"
edad = 45
profesion = "Ingeniero"

reporte = f"""
Nombre: {nombre}
Edad: {edad}
Profesión: {profesion}
"""
print(reporte)
```


