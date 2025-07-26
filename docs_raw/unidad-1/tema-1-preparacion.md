# Tema 1: Preparación inicial

## Objetivo del tema
Instalar Python utilizando `uv`, configurar un entorno virtual y ejecutar una primera prueba interactiva desde la consola de Python. Podrás gestionar tus propios proyectos con python y uv. 

:::{note}
En todo el curso, se sugiere que ejecutes todas las actividades dentro en su entorno de ejecución local, aunque el libro ofrece una forma de correr las libretas en la nube.
:::

(correr-python-target)=
## ¿Qué significa “correr” Python?

“Correr” Python significa ejecutar instrucciones escritas en este lenguaje para que la computadora las interprete y realice acciones, como mostrar texto, realizar cálculos, o procesar datos.

A diferencia de otros lenguajes de programación que son "compilados", python es un lenguaje "interpretado", esto quiere decir que el código, lo que el programador escribe, pasa por un programa llamado "intérprete" que lo lee y ejecuta el código, en lugar de que el código se transforme en instrucciones directas para la máquina como es el caso de los lenguajes compilados.


## ¿Qué es `uv` y por qué usarlo?

[Astral UV](https://docs.astral.sh/uv/) es una herramienta moderna para gestionar proyectos Python de forma segura y reproducible.

Es la opción preferida por el momento ya que facilita mucho todo el flujo de trabajo, desde la instalación de python, sus librerías y demás dependencias, entornos virtuales y empaquetamiento; por ahora no tienes que preocuparte de esos términos, pero es la forma sugerida de trabajar en este curso.


:::{admonition} Cómo ejecutar comandos
:class: important
1. Escribe el comando y sus argumentos.
2. Da enter para ejecutar.
:::

## Instalación y configuración básica

### 1. Abrir una terminal

Todos los sistemas operativos tienen una aplicación llamada **Terminal**, que sirve para interactuar con el ordenador por medio de comandos.

El primer paso es abrir la terminal. Cuando lo hagas, puedes intentar los siguientes comandos:

- `ls` - Enlista los elementos presentes en la carpeta actual.
- `cd` - **C**ambia el **d**irectorio a una nueva ubicación.
- `mkdir` - Crea un nuevo directorio con el nombre especificado (**m**a**k**e **dir**).

:::{tip}
Existen muchos comandos diferentes, revisa la documentación de tu sistema para conocer cuáles tienes disponibles.
:::

### 2. Instalación

Siempre consulta la página oficial de [instalación](https://docs.astral.sh/uv/getting-started/installation/).

En Linux/Mac:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

En Windows (PowerShell):

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

Una vez que termine de instalarse, cierra la terminal y abre una nueva, escribe `uv -V` y da enter, debería aparecer un breve texto con la versión de uv instalada, por ejemplo `uv 0.6.14`. Si todo está bien, podemos avanzar.

### 3. Crear un proyecto

Para inicializar el proyecto del curso, hay que seguir estos pasos.

1. Navegar en la terminal hasta el lugar donde queramos tener el proyecto.


:::{admonition} Ejemplo
:class: info
```bash 
cd Documentos/cursos/
```
Este ejemplo asume que en la carpeta "Documentos" existe otra llamada "cursos".
:::

El comando `cd` "Cambiar directorio" permite navegar el sistema de archivos. Para regresar un nivel usa `cd ..`. Para regresar a la carpeta principal, solo pon `cd`.
Esto funciona tanto en Mac y Linux como en Windows. 

2. Inicializar el proyecto

Ya que estamos en el lugar donde queremos tener nuestro proyecto, utiliza el siguiente comando.

```bash
uv init curso_python
```

3. Agregar dependencias (librerías y paquetes necesarios).

Para que podamos tener en nuestro proyecto las herramientas necesarias para trabajar, utiliza el siguiente comando.

```bash
uv add jupyterlab seaborn pandas scipy statsmodels
```

Esto instalará en nuestro proyecto lo siguiente

|Librería|Descripción|
|--------|-----------|
|`jupyter lab`| Es una herramienta para escribir y ejecutar python, especialmente pensada para análisis de datos.|
|`seaborn`| Es una librería para visualización de datos, permite hacer muchos tipos de gráficos.|
|`pandas`| Permite la manipulación y análisis de datos tabulados, Es como el excel de python.|
|`scipy`| Es una librería para análisis estadísticos generales, por ejemplo, t de student, pruebas de normalidad, etc.|
|`statsmodels`| Es una librería para modelado estadístico, útil para distintos tipos de análisis como regresiones.|

Ahora que está todo instalado, podremos comenzar a trabajar.

(terminal-target)=

## Entrar a la consola (`python`) y ejecutar un comando de prueba

Sin salir de la consola, ejecuta el siguiente comando:

```bash
uv run python
```

Inmediatamente deberías ver algo parecido a esto en tu terminal, aunque puede variar de acuerdo a la versión de python disponible en el momento.

```python
Python 3.13.1 (main, Jan 14 2025, 22:47:38) [Clang 19.1.6 ] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 

```
Esto quiere decir que ya te encuentras dentro del intérprete de python, y podrás comenzar a escribir código directamente.

**¡FELICIDADES!**

## Ejecuta tu primer código en python

Dentro del intérprete de python escribe lo siguiente:

```python
print("¡Hola mundo!")
```

Deberías ver algo parecido a esto:

```bash
>>> print("¡Hola mundo!")
¡Hola mundo!
```

Felicidades de nuevo, lograste escribir y ejecutar tu primer programa en python.
Lo que acabas de hacer es decirle a python que escriba en la consola el mensaje "¡Hola mundo!", por medio de la función `print`.

En la siguiente lectura aprenderás más al respecto.

:::{important}
Para salir del intérprete debes escribir `exit()`. Con paréntesis, esto le dice al intérprete que ha llegado al final del programa.
:::{note}
En versiones más recientes del intérprete, solo ejecutar `exit` puede ser suficiente
:::
:::

## Práctica personal

1. Repite el proceso de abrir una nueva terminal, navegar hasta el directorio del curso y ejecutar la consola de python.
2. Dentro de la consola de python ejecuta el comando `help`.
3. Escribe `print`. Al hacerlo, estás pidiéndole a "help" que te diga cómo utilizar `print`. Puedes hacer lo mismo con otros objetos en python. Puedes utilizar enter para desplazarte por el texto de ayuda.
4. Sal de `help` escribiendo "q", "exit" o "quit".
5. Ahora utiliza `help(print)`. Verás el mismo efecto, pero esta vez no te quedarás dentro de `help`, regresarás directo al intérprete.
6. Intenta utilizar otros valores dentro del paréntesis de la función `print`, por ejemplo:
   ```python
   print(123)
   ```
:::{important}
Cuando hayas terminado puedes cerrar la terminal, recibieras una advertencia antes de hacerlo.
:::