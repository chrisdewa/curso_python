---
parent: "Unidad 1: Aspectos Básicos"
nav_order: 3
---

# Tema 3: ¿Dónde y cómo ejecutar Python?

En este tema exploramos las distintas formas de **trabajar con código Python**, desde opciones sencillas en la nube hasta entornos locales más avanzados y flexibles.

:::{admonition} Nota
:class: note
En este curso usaremos Python en forma local, asistidos por la herramienta `uv`, como se explicó en el [tema 1](<tema 1 - preparación.md>). El objetivo de esta lección es que conozcas otras formas de correr Python.
:::

---

## Opciones para ejecutar Python

### En la nube

#### Google Colab

[Google Colab](https://colab.research.google.com/) es un servicio gratuito que permite escribir y ejecutar código Python desde el navegador.

Cuando lo usas, se te asigna una computadora virtual que ya tiene instalado todo lo necesario para trabajar. No necesitas instalar nada, y puedes guardar tu trabajo en Google Drive.

#### Ventajas
- No requiere instalación.
- Funciona desde cualquier sistema operativo.
- Se integra con Google Drive.
- Incluye bibliotecas comunes (`numpy`, `pandas`, `matplotlib`, etc.).
- Ideal para aprender o hacer pruebas rápidas.

#### Desventajas
- Requiere conexión a internet.
- Se desconecta por inactividad.
- Los archivos cargados (bases de datos, etc.) se borran al cerrar la sesión (aunque el código sí se guarda).

#### Cómo usarlo

1. Accede a https://colab.research.google.com/
2. Inicia sesión con tu cuenta de Google.
3. Selecciona “Nuevo notebook”.
4. Escribe código como:

   ```python
   print("Hola mundo")
   ```

5. Haz clic en el botón ▶ para ejecutarlo.

:::{tip}
Existen otras plataformas en la nube similares, como Replit, Kaggle Notebooks o Deepnote. Puedes explorarlas por tu cuenta si lo deseas.
:::

---


### Instalador oficial de Python

Puedes descargarlo desde: [https://www.python.org/downloads/](https://www.python.org/downloads/)

#### Pasos básicos

1. Descarga el instalador adecuado para tu sistema operativo.
2. En Windows: **marca la opción “Add Python to PATH”**.
3. Completa la instalación.

#### ¿Qué puedes hacer después?

- Ejecutar Python desde la terminal:

  ```bash
  python
  ```

- Crear entornos virtuales:

  ```bash
  python -m venv .venv
  ```

- Instalar herramientas como JupyterLab:

  ```bash
  .venv\Scripts\activate      # en Windows
  source .venv/bin/activate     # en Linux/Mac
  pip install jupyterlab
  jupyter lab
  ```

Es una forma muy flexible y profesional, aunque puede requerir mayor familiaridad con la línea de comandos.

---

### Astral UV

Herramienta moderna y rápida para gestionar proyectos Python. Se cubrió en el [tema 1](<tema 1 - preparación.md>). Es la opción recomendada para este curso.

---

### Anaconda

[Anaconda](https://www.anaconda.com/) es una distribución muy completa para ciencia de datos, análisis numérico y machine learning.

#### Ventajas

- Incluye Jupyter, Spyder, pandas, numpy, matplotlib, etc.
- Tiene su propio gestor de entornos (`conda`).
- Ideal para quien desea instalar todo de una vez.

#### Desventajas

- Es pesada (>3 GB).
- Si no se usan entornos virtuales, puede volverse difícil de mantener.

#### ¿Para quién es útil?

- Personas en ciencia de datos, biología computacional, investigación, etc.
- Usuarios que prefieren evitar instalaciones manuales.

---

### WinPython (solo en Windows)

[WinPython](https://winpython.github.io/) es una distribución ligera y portátil para Windows.

#### Ventajas

- No requiere instalación (se descomprime y se usa).
- Incluye `numpy`, `pandas`, `jupyter`, `statsmodels`, entre otros.
- Ideal si no tienes permisos para instalar programas.

#### Desventajas

- No está pensada para múltiples proyectos con versiones distintas.
- Puede ser menos flexible que `uv` o `conda`.

#### ¿Para quién es útil?

- Estudiantes y profesionales que usan siempre las mismas herramientas.
- Usuarios en sistemas restringidos.

---

## ¿Cómo escribir y ejecutar código Python?

### Archivos `.py`

Puedes escribir código en cualquier editor de texto, por ejemplo `notepad`, `gedit`, `textedit`, etc.

Pasos:

1. Escribe código como:

   ```python
   print("Hola mundo")
   ```

2. Guárdalo como `script.py`.
3. Abre la terminal y ejecuta:

   ```bash
   uv run script.py
   ```

Esto enviará tu código al **intérprete de Python**, que es el que realmente lo ejecuta.

---

### JupyterLab

[JupyterLab](https://jupyter.org/) es una interfaz web para escribir y ejecutar código en bloques llamados **celdas**. Permite agregar gráficos, notas y resultados en un mismo documento.

Ideal para:

- Aprender paso a paso.
- Crear libretas de ejercicios o informes con gráficos y texto.
- Analizar datos con `pandas` y `matplotlib`.

Se instala con:

```bash
pip install jupyterlab
```

Y se ejecuta con:

```bash
jupyter lab
```

También puede usarse dentro de entornos `uv` o `conda`.

---

## Editores de texto recomendados

Aunque puedes escribir código en cualquier editor, algunos ofrecen ayudas especiales:

| Editor     | Características destacadas |
|------------|-----------------------------|
| **VS Code**  | Resaltado de sintaxis, autocompletado, integración con Python y Jupyter |
| **JupyterLab** | Permite mezclar código y texto, ideal para aprendizaje y ciencia de datos |
| **PyCharm** | Excelente para proyectos grandes, con herramientas avanzadas |

---

## ¿Qué es un script de Python?

Un **script** es un archivo `.py` que contiene una serie de instrucciones que Python ejecuta de arriba hacia abajo.

Ejemplo:

```python
# archivo hola.py
print("Hola mundo")
```

Se ejecuta con:

```bash
python hola.py
```

Si estás usando `uv`:

```bash
uv run hola.py
```

---

## Próximos pasos

Las opciones recomendadas para seguir este curso, ya que utilizaremos libretas, es `uv` para manejar python y librerías y `jupyter lab` escribir y ejecutar el código. En el siguiente tema veremos cómo instalar jupyter, abrirlo y comenzar a trabajar.

