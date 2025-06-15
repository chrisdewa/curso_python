---
title: "Tema 2: Cómo correr python"
---

# Cómo correr python

__**Tabla de contenidos**__
* TOC
{:toc}

Este tema explica las distintas formas en que se puede "correr" o ejecutar código en Python. Si nunca has programado antes, no te preocupes: aquí lo explicamos paso a paso, desde cómo escribir una línea de código hasta cómo ejecutar un programa completo.

## ¿Qué significa “correr” Python?

"Correr" Python significa ejecutar instrucciones escritas en este lenguaje para que la computadora haga lo que le pedimos: mostrar un mensaje, hacer un cálculo, leer un archivo, etc.

Hay varias formas de hacerlo:

* En la nube (sin instalar nada en tu computadora)
* Localmente (instalando Python y programas relacionados)

---

## En la nube - Google Colab

Google ofrece un servicio gratuito llamado [Google Colab](https://colab.research.google.com/) que te permite escribir y ejecutar código Python directamente desde tu navegador.

### Ventajas

- No necesitas instalar nada.
- Puedes guardar tus archivos en Google Drive.
- Incluye muchas bibliotecas útiles ya instaladas (como pandas, numpy, matplotlib, etc).
- Es gratis (aunque con límites razonables).

### Cómo usarlo

1. Abre el enlace: https://colab.research.google.com/
2. Inicia sesión con tu cuenta de Google.
3. Crea un nuevo archivo seleccionando “Nuevo cuaderno”.
4. En la celda que aparece, escribe código como:

   ```python
   print("Hola mundo")
   ```

5. Haz clic en el botón ▶ para ejecutarlo.

---

## Local - En tu propia computadora

Instalar Python localmente te da mayor control, velocidad y privacidad. Hay varias formas de hacerlo.

---

### Opción clásica: Instalador oficial de Python

1. Ve a la página [https://www.python.org/downloads/](https://www.python.org/downloads/)
2. Descarga el instalador para tu sistema operativo (Windows, macOS o Linux).
3. En Windows, **asegúrate de marcar la opción "Add Python to PATH"** antes de instalar.
4. Termina la instalación.

Para comprobar que funciona, abre la terminal (o PowerShell en Windows) y escribe:

```bash
python
```

Deberías ver algo como:

```
Python 3.12.0 (default, Oct  5 2024, ...)
>>> 
```

Ahí puedes escribir instrucciones:

```python
print("Hola desde Python instalado")
```

Para salir, escribe:

```python
exit()
```

---

### Opción moderna y recomendada: Astral UV

[Astral UV](https://docs.astral.sh/uv/) es una herramienta nueva que facilita mucho el uso de Python. Permite instalar y manejar proyectos con rapidez, seguridad y sin complicaciones.

#### ¿Qué hace `uv`?

- Instala entornos virtuales automáticamente.
- Administra dependencias (paquetes de Python).
- Aísla cada proyecto, evitando conflictos entre bibliotecas.

#### Cómo instalar `uv`

##### En macOS o Linux:

Abre una terminal y escribe:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

##### En Windows (PowerShell):

Abre PowerShell como administrador y escribe:

```powershell
irm https://astral.sh/uv/install.ps1 | iex
```

Una vez instalado, el comando `uv` ya estará disponible.

---

### Crear un proyecto con `uv`

Supongamos que quieres empezar un proyecto de Python para aprender. Haz lo siguiente:

```bash
mkdir mi_proyecto
cd mi_proyecto
```

Ahora inicializa un entorno con:

```bash
uv venv
```

Esto creará una carpeta `.venv` con un entorno de Python aislado, y lo activará automáticamente si estás en una terminal compatible.

---

### Crear un archivo `pyproject.toml`

Este archivo indica qué paquetes necesitas para tu proyecto. Crea un archivo con ese nombre (`pyproject.toml`) y escribe algo así dentro:

```toml
[project]
name = "mi_proyecto"
dependencies = [
  "jupyterlab",
  "numpy",
  "pandas"
]
```

Esto le dice a `uv` que debe instalar tres paquetes: jupyterlab (para usar notebooks), numpy (para matemáticas) y pandas (para datos).

Ahora instala todo con:

```bash
uv pip install -r pyproject.toml
```

O, alternativamente, uno por uno:

```bash
uv pip install jupyterlab
```

---

### Cómo usar JupyterLab

[JupyterLab](https://jupyter.org/) es un entorno gráfico que corre en el navegador y permite escribir código en celdas, ver resultados, insertar notas, gráficos y más. Es ideal para aprender.

Después de instalarlo, lo ejecutas así:

```bash
jupyter lab
```

Se abrirá una ventana del navegador con una interfaz gráfica. Ahí puedes crear un “notebook” nuevo y comenzar a escribir código.

Ejemplo:

```python
mensaje = "Hola desde Jupyter"
print(mensaje)
```

---

### Alternativas: entornos virtuales clásicos

Si no usas `uv`, puedes usar el método tradicional de Python:

```bash
python -m venv .venv
source .venv/bin/activate     # macOS o Linux
.venv\Scripts\activate      # Windows
```

Luego instala paquetes con `pip`:

```bash
pip install jupyterlab
```

Y sigue el mismo proceso para usar Jupyter.

---

### Otra opción: Anaconda

[Anaconda](https://www.anaconda.com/) es una distribución grande de Python que ya incluye Jupyter, pandas, numpy, scipy y muchas herramientas útiles. Es muy usada en ciencia de datos.

Ventajas:

- Fácil de instalar.
- Muy completo.
- Incluye su propia aplicación gráfica: Anaconda Navigator.

Desventajas:

- Muy pesado (varios GB).
- Puede ser confuso si usas también el Python oficial.

---

## ¿Qué es un script de Python?

Un *script* es un archivo con extensión `.py` que contiene instrucciones. Puedes crear uno en cualquier editor de texto, por ejemplo:

```python
# archivo llamado hola.py
print("Hola mundo")
```

Para correrlo, escribe:

```bash
python hola.py
```

---

## ¿Qué editor de texto usar?

Puedes usar desde el Bloc de Notas hasta editores más completos como:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Thonny](https://thonny.org/) (muy recomendado para principiantes)
- [Sublime Text](https://www.sublimetext.com/)
- [JupyterLab](https://jupyter.org/)

---

## ¿Qué hacer si me pierdo?

Si no entiendes algo, no pasa nada. Lo más importante es:

1. Instalar Python (recomendado: usar `uv`)
2. Crear un entorno con `uv venv`
3. Instalar `jupyterlab`
4. Ejecutar `jupyter lab`
5. Empezar a escribir código

Puedes volver a esta guía siempre que necesites revisar los pasos.

---

## Resumen

| Forma de correr Python | Requiere instalación | Ideal para...                        |
|------------------------|----------------------|--------------------------------------|
| Google Colab           | No                   | Principiantes, clases, experimentos  |
| Instalador oficial     | Sí                   | Uso básico o general                 |
| Astral UV              | Sí                   | Proyectos serios, recomendada        |
| Anaconda               | Sí                   | Ciencia de datos, principiantes      |
| JupyterLab             | Depende              | Análisis interactivo, enseñanza      |

---

## Próximos pasos

Ahora que sabes cómo correr Python, en el siguiente tema aprenderás a escribir tus primeros programas, usar variables, hacer operaciones y tomar decisiones en tu código.
