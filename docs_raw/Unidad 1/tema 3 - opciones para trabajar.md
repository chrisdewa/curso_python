---
title: "Tema 2: Formas de trabajar con Python"
parent: "Unidad 1: Aspectos Básicos"
nav_order: 3
---

# Formas de trabajar con Python

En este tema exploramos las distintas formas de ejecutar código Python, desde opciones simples en la nube hasta instalaciones avanzadas y flexibles en tu computadora.


## En la nube - Google Colab

[Google Colab](https://colab.research.google.com/) es un servicio gratuito que permite escribir y ejecutar código Python desde el navegador.
Cuando lo usas, se te asigna una computadora virtual que ya tiene instalado todo lo necesario para trabajar, todo ocurre en la nube, sin que tu computadora necesite hacer nada más que conectarse a colab.

### Ventajas

- No requiere instalación.
- Funciona desde cualquier sistema operativo (Windows, Mac, Linux, Chromebook).
- Se integra con Google Drive.
- Incluye bibliotecas como `numpy`, `pandas`, `matplotlib`.

### Desventajas

- Depende de conexión a internet.
- Puede ser más lento que trabajar localmente.
- Tiene límites en uso prolongado (desconexión por inactividad).

### Cómo usarlo

1. Accede a https://colab.research.google.com/
2. Inicia sesión con tu cuenta de Google.
3. Selecciona “Nuevo notebook”.
4. Escribe código como:

   ```python
   print("Hola mundo")
   ```

5. Haz clic en el botón ▶ para ejecutarlo.

---

## Local - En tu computadora

Instalar Python localmente da más control y velocidad. Es la mejor opción si deseas trabajar sin conexión o construir proyectos complejos.

---

### Opción 1: Instalador oficial de Python

La forma más directa de instalar Python es desde [https://www.python.org/downloads/](https://www.python.org/downloads/)

#### Pasos:

1. Descarga el instalador para tu sistema operativo.
2. En Windows: **activa la opción “Add Python to PATH”**.
3. Completa la instalación.

#### ¿Qué se puede hacer?

Una vez instalado, puedes:

- Ejecutar Python desde terminal:

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

Este método es flexible y profesional, pero requiere cuidado al manejar versiones y entornos si trabajas en varios proyectos. Para un novato puede ser complejo y es dificil cambiar entre versiones de python.

---

### Opción 2: Astral UV



### Opción 3: Anaconda

[Anaconda](https://www.anaconda.com/) es una distribución completa para ciencia de datos, análisis numérico y machine learning.

#### Ventajas

- Incluye Jupyter, Spyder, pandas, numpy, matplotlib, etc.
- Tiene su propio gestor de entornos: `conda`.
- Funciona bien para usuarios sin conocimientos técnicos que quieren instalar todo de una vez.

#### Desventajas

- Es muy pesada (>3 GB).
- Su entorno `base` puede volverse difícil de mantener si no se usan entornos específicos.
- No es estrictamente necesario si ya sabes usar `pip` o `uv`.

#### ¿Para quién es útil?

- Personas que trabajen en ciencia de datos, biología computacional, finanzas, investigación.
- Quienes quieran evitar instalar paquetes uno a uno.
- Docentes que busquen entornos estandarizados para talleres.

---

## Comparación entre opciones

| Método             | Requiere instalación | Facilidad de uso | Ideal para...                          |
|--------------------|----------------------|------------------|----------------------------------------|
| Google Colab       | No                   | Muy alta         | Primer contacto, clases, pruebas       |
| Instalador oficial | Sí                   | Media            | Uso general, proyectos variados        |
| UV                 | Sí                   | Alta             | Desarrollo reproducible, proyectos     |
| Anaconda           | Sí                   | Alta             | Ciencia de datos, talleres, investigación |

---

## JupyterLab

[JupyterLab](https://jupyter.org/) es una interfaz web que permite ejecutar código Python en bloques (celdas), visualizar resultados, escribir notas y generar gráficos.

Ideal para:

- Aprender paso a paso.
- Crear cuadernos de ejercicios.
- Analizar datos.

Se instala con:

```bash
pip install jupyterlab
```

O bien en `uv` o `conda`.

Para ejecutarlo:

```bash
jupyter lab
```

---

## Editores de texto recomendados

Puedes escribir código Python en cualquier editor, pero algunos tienen ventajas:

- **VS Code**: muy potente, con extensiones para Python y Jupyter.
- **JupyterLab**: permite combinar código, gráficos y texto.

---

## ¿Qué es un script de Python?

Un archivo `.py` es un script: una secuencia de instrucciones.

Ejemplo:

```python
# archivo hola.py
print("Hola mundo")
```

Se ejecuta con:

```bash
python hola.py
```

---

## Recomendaciones

- Si solo quieres probar Python → usa **Google Colab**.
- Si quieres trabajar offline con control → usa **Instalador oficial + venv o uv**.
- Si tu enfoque es ciencia de datos → **Anaconda o uv con JupyterLab**.

---

## Próximos pasos

Ya puedes ejecutar código Python. En el siguiente tema aprenderás a escribir tus primeros programas, trabajar con variables y hacer operaciones básicas.

$$
\bar{x} = \frac{\sum{x_i}}{n}
$$