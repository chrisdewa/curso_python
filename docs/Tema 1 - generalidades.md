# Generalidades 

## Programación


## Algorítmica


## Python
Python es un lenguaje de programación de propósito general, es decir, se puede hacer casi cualquier cosa con él, desde páginas web hasta análisis de datos.

### Paradigmas

Python es multiparadigma, eso quiere decir que hay varias formas de programar, algunas se utilizan más fuertemente que otras.

#### Orientado a Objetos

En Python, todo es un objeto. Los objetos son como pequeñas máquinas que tienen ciertos "atributos" (características) y ciertos "métodos" (acciones que pueden realizar).

Por ejemplo, un objeto humano podría tener un atributo como "nombre" y un método como "saludar".

Los objetos abstraen lógica y permiten compartimentar la información, facilitando la reutilización y organización del código mediante clases e instancias.

#### Funcional

En la programación funcional, el código se estructura en funciones puras, es decir, funciones que reciben entradas y producen salidas sin modificar variables externas (sin efectos secundarios).

Python permite este paradigma mediante funciones de orden superior (map, filter, reduce), funciones lambda y el uso de estructuras inmutables como tuples y frozenset.

La programación funcional promueve la legibilidad, el uso de expresiones en lugar de instrucciones y facilita la paralelización.

#### Imperativo

Este paradigma se basa en instrucciones secuenciales que modifican el estado del programa. Es la forma más común de programar, donde se detallan los pasos necesarios para lograr un resultado.

En Python, escribir un bucle for o usar condicionales if son ejemplos de programación imperativa.

#### Procedural

Es un caso particular de la programación imperativa donde el código se organiza en funciones o procedimientos. Cada función realiza una tarea específica y el flujo del programa se gestiona mediante llamadas a estas funciones.

En Python, este estilo es muy común, especialmente en scripts pequeños o código estructurado sin clases.

## Concéptos básicos de python

### Variables
Para un valor a una variable se utiliza el símbolo __=__

Por ejemplo:
```python
a = 3
```
Aquí definimos una variable llamada "a" que contiene el valor 3.

Los nombres de las variables tienen que iniciar con letras, no con números, es decir `0variable` sería inválido.

Además, no pueden llamarse como ninguna de las palabras reservadas del idioma como "or", "if", "while", etc.


#### Tipos
Como comentamos, python es un lenguaje que está orientado a objetos. Todo es un objeto y cada objeto tiene su propio pedegree (se vará luego).


##### Tipos básicos
En python existen algunos tipos básicos.

###### Valores individuales

|tipo|ejemplo|función|
|----|-------|-------|
|int|3|Números enteros, pueden ser positivos, negativos y cero.|
|float|0.12|Números con decimales, por lo demás son iguales a los int|
|bool|True/False|Iguales a los valores 1 y 0. Representan el resultado de operaciones lógicas|
|str|'hola mundo'|Los strings contienen cualquier cantidad de texto incluyendo una cadena vacía de texto|
|NoneType|None|Representa un valor nulo, algo que no existe.|

###### Colecciones
Las colecciones son tipos que contienen a otros datos.

|tipo|ejemplo|función|
|----|-------|-------|
|list|[1,2,3]|Arreglo de datos ordenado y mutable|
|tuple|(1,2,3)|Arreglo de datos ordenado pero no mutable|
|set|{1,2,3}|Colección de valores únicos que no se repiten, no están ordenados|
|dict|{'a':1, 'b':2}|Mapea valores únicos (llaves) con valores asociados que pueden repetirse y ser de cualquier tipo.|

##### Acceder a valores dentro de secuencias:

**Listas y tuplas**

Para obtener un dato almacenado dentro de una tupla o lista, utilizamos el operador de "indexación". **CONCEPTO CLAVE** lOS índices en python son el número de ítem en la secuencia, y se enumeran desde el 0 hasta n-1, donde n es el número de ítems.

Por ejemplo:
```python
frutas = ['Manzana', 'Pera', 'Naranja']

print("Fruta 1:" frutas[1])
```
El resultado será: "Fruta 1: Pera". Esto es porque se enumera desde el cero, es decir, la primera es 0 (Manzana), la segunda es 1 (Pera) y la tercera es 2 (Naranja).

**Diccionarios**

Los diccionarios están compuestos por llaves y valores, si queremos acceder a un valor dado, necesitamos el valor de la llave.

Ejemplo:
```python
diccionario = {'alfa': 1, 'beta': 2, 'gama': 3}

print('Beta es la letra griega número:', diccionario['beta'])
```
El resultado será "Beta es la letra griega número: 2" porque accedemos al diccionario con el mismo operador de indexación, pero en lugar de utilizar el número de la secuencia, utilizamos el valor de la llave, en este caso "beta".


### Operadores
Permiten realizar _operaciones_.

La siguiente tabla muestra los operadores de acuerdo a su prioridad (similar a PEMDAS).

| Operación               | Sintaxis               | Función                      |
|-------------------------|------------------------|------------------------------|
| Inversión bit a bit     | `~ a`                  | Invertir bits                |
| Negación (aritmética)   | `- a`                  | Cambiar de signo             |
| Positivo                | `+ a`                  | Mantener positivo            |
| Negación (lógica)       | `not a`                | Negar                        |
| Exponenciación          | `a ** b`               | Elevar a la potencia         |
| Multiplicación          | `a * b`                | Multiplicar                  |
| División                | `a / b`                | División real                |
| División entera         | `a // b`               | División entera              |
| Módulo                  | `a % b`                | Obtener el residuo           |
| Suma                    | `a + b`                | Sumar                        |
| Resta                   | `a - b`                | Restar                       |
| Y bit a bit             | `a & b`                | Comparar bits con "y"        |
| XOR bit a bit           | `a ^ b`                | Comparar bits con "o exclusivo" |
|Operación Not bits|~a|Niega los bits|
|Operación Y bits|a & b|Operador de igualdad|
|Operación O bits|a \| b|Puede ser uno u otro.|
| Comparación             | `a < b`                | Menor que                    |
| Comparación             | `a <= b`               | Menor o igual que            |
| Comparación             | `a > b`                | Mayor que                    |
| Comparación             | `a >= b`               | Mayor o igual que            |
| Igualdad                | `a == b`               | Comparar si son iguales      |
| Diferencia              | `a != b`               | Comparar si son distintos    |
| Identidad               | `a is b`               | Verificar si son el mismo    |
| Identidad               | `a is not b`           | Verificar si no son el mismo |
| Prueba de pertenencia   | `obj in seq`           | Verificar si está en         |
| Asignación indexada     | `obj[k] = v`           | Asignar un valor en índice   |
| Eliminación indexada    | `del obj[k]`           | Eliminar un valor en índice  |
| Indexación              | `obj[k]`               | Obtener un valor en índice   |
| Asignación en rebanada  | `seq[i:j] = valores`   | Asignar valores en rango     |
| Eliminación en rebanada | `del seq[i:j]`         | Eliminar valores en rango    |
| Rebanado (slicing)      | `seq[i:j]`             | Obtener una parte            |


### Funciones
Las funciones encapsulan secciones de código y lo vuelven reusable.
Pueden utilizarse múltiples veces y se utilizan para tareas que pueden realizarse varias veces:

La estructura básica es:

```python
def mi_función(a, b):
  # cuerpo de la función
  resultado = a + b
  return resultado  
```
Se inicia con `def` luego el nombre de la función y luego paréntesis. Dentro del paréntesis se colocan los argumentos que la función requiere, aquí `a` y `b`.

Para ejecutar la función se utiliza su nombre, paréntesis y los parámetros que se requieran. Si la función debe devolver algún valor la palabra clave __return__ se coloca frente a ese valor.

```python
mi_función(1, 2)
>>> 3
```

#### Funciones nativas (built-in)
En python se tienen una enorme gama de funciones disponibles de forma nativa que reducen la necesidad de escribir código nuevo para tareas comunes.

Algunos ejemplos:

| Función   | Ejemplo de uso              | Utilidad |
|-----------|-----------------------------|----------|
| `print`   | `print("Hola, mundo") # Hola, mundo` | Muestra un mensaje o el valor de una variable en la salida estándar |
| `sum`     | `sum([1,2,3]) # 6`          | Devuelve la suma de todos los elementos de una colección |
| `len`     | `len([1,2,3]) # 3`          | Devuelve la cantidad de elementos en una colección |
| `max`     | `max([1,2,3]) # 3`          | Devuelve el valor máximo en una colección |
| `min`     | `min([1,2,3]) # 1`          | Devuelve el valor mínimo en una colección |
| `round`   | `round(3.14159, 2) # 3.14`  | Redondea un número a la cantidad de decimales especificada |
| `abs`     | `abs(-5) # 5`               | Devuelve el valor absoluto de un número |
| `map`     | `list(map(str, [1,2,3])) # ['1', '2', '3']` | Aplica una función a cada elemento de una colección |
| `filter`  | `list(filter(lambda x: x>2, [1,2,3])) # [3]` | Filtra los elementos de una colección según una condición |
| `sorted`  | `sorted([3,1,2]) # [1,2,3]` | Devuelve una nueva lista ordenada |
| `reversed` | `list(reversed([1,2,3])) # [3,2,1]` | Invierte una secuencia iterable |
| `any`     | `any([False, True, False]) # True` | Devuelve `True` si al menos un elemento es verdadero |
| `all`     | `all([True, True, False]) # False` | Devuelve `True` si todos los elementos son verdaderos |
| `type`    | `type(3.14) # <class 'float'>` | Devuelve el tipo de un objeto |
| `isinstance` | `isinstance(3.14, float) # True` | Verifica si un objeto es de un tipo específico |
| `range`   | `list(range(1, 4)) # [1, 2, 3]` | Genera una secuencia de números en un rango |

### Clases
Las clases son tipo definidos por el programador.
Una clase es el plano que utiliza python para construir objetos.

Los objetos tiene atributos y tienen métodos. Para acceder a ellos utilizamos un punto después del objeto con el nombre del método o el atributo. Por ejemplo:

```python
humano.saludar()
```
Aquí hay un objeto llamado "humano" que tiene un método que se llama saludar y que se está ejecutando.

#### Atributos
Los atributos de los objetos son valores asociados a ellos, no se ejecutan.
Por ejemplo, en nuestro ejemplo anterior:
```python
humano.nombre
>>> 'Christian'
```
Aquí vemos que el humano tiene un atributo llamado "nombre" el cual contiene el valor "Christian". Los atributos pueden ser vistos como variables dentro de los objetos.

#### Métodos
Los métodos son funciones dentro de los objetos y que los hacen funcionar de formas específicas.
Como se ejecutan, deben ser utilizados con paréntesis.
Saludar, como en el ejemplo anterior, es un método.

```python
humano.saludar()
>>> 'Hola! mi nombre es Christian!'
```

#### Definición de una clase
Veamos cómo se ve la clase de este ejemplo en su definición.

```python
class Humano:
  def __init__(self, nombre):
    self.nombre = nombre # aquí definimos el atributo
  
  def saludar(self): # aquí definimos el método
    return f'Hola! mi nombre es {self.nombre}'
```

#### Herencia
Un concepto básico al utilizar clases y objetos es la herencia. Es posible que las clases hereden características de otras clases, por ejemplo:

```python
class Celula:  # Clase base
    def __init__(self, energia):
        self.energia = energia  # Energía disponible
    
    def metabolizar(self, cantidad):
        """Reduce la energía disponible, simulando el metabolismo."""
        if self.energia >= cantidad:
            self.energia -= cantidad
            print(f"La célula ha metabolizado. Energía restante: {self.energia}")
        else:
            print("No hay suficiente energía.")

# Célula muscular (Miocito)
class CelulaMuscular(Celula):
    def contraerse(self):
        """Simula una contracción muscular, gastando energía."""
        if self.energia > 5:
            self.energia -= 5
            print("La célula muscular se ha contraído.")
        else:
            print("No hay suficiente energía para contraerse.")

# Célula nerviosa (Neurona)
class Neurona(Celula):
    def transmitir_impulso(self):
        """Simula la transmisión de un impulso nervioso."""
        if self.energia > 3:
            self.energia -= 3
            print("La neurona ha transmitido un impulso nervioso.")
        else:
            print("No hay suficiente energía para transmitir el impulso.")

# Ejemplo de uso
miocito = CelulaMuscular(energia=20)
neurona = Neurona(energia=15)

miocito.metabolizar(5)  # Reduce energía
miocito.contraerse()  # Se contrae

neurona.metabolizar(2)  # Reduce energía
neurona.transmitir_impulso()  # Libera neurotransmisores


```
Aquí estmaos definiendo una clase base de célcula

