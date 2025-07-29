# Recursos

En este documento se recopilan los enlaces que aparecen a lo largo del repositorio y otros recursos útiles para profundizar en el curso.

:::{tip}
Si encuentras más material que consideres valioso puedes abrir un `issue` para que sea incorporado.
:::

## Documentación oficial

- **Sitio del curso:** <https://chrisdewa.github.io/curso_python/>
- **Python:** <https://docs.python.org/3/>
- **Jupyter Book:** <https://jupyterbook.org/en/stable/>
- **JupyterLab:** <https://jupyterlab.readthedocs.io/en/stable/>

### Bibliotecas de análisis

|Librería|Documentación|
|---|---|
|`pandas`|<https://pandas.pydata.org/docs/>|
|`numpy`|<https://numpy.org/doc/>|
|`matplotlib`|<https://matplotlib.org/stable/>|
|`seaborn`|<https://seaborn.pydata.org/>|
|`scipy`|<https://scipy.org/>|
|`statsmodels`|<https://www.statsmodels.org/stable/>|
|`scikit-learn`|<https://scikit-learn.org/stable/>|
|`pingouin`|<https://pingouin-stats.org/>|
|`bambi`|<https://bambinos.github.io/bambi/>|
|`lifelines`|<https://lifelines.readthedocs.io/>|
|`numpyro`|<https://num.pyro.ai/en/stable/>|
|`openpyxl`|<https://openpyxl.readthedocs.io/>|

(acordeones-target)=
## Acordeones

|Tema o Librería|Acordeon|Oficial|Liga|
|---|---|--|---|
|`pandas`|Data Wrangling. Uso general de `pandas` con datos tidy.| Sí | [liga](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)|
|`matplotlib`|Uso general.| Sí | [liga](https://matplotlib.org/cheatsheets/_images/cheatsheets-1.png)|
|`matplotlib`|Manejo de ejes de las figuras.| Sí | [liga](https://matplotlib.org/cheatsheets/_images/cheatsheets-1.png)|
|`matplotlib`|Consejos para principiantes.| Sí | [liga](https://matplotlib.org/cheatsheets/_images/handout-beginner.png)|
|`matplotlib`|Consejos intermedios.| Sí | [liga](https://matplotlib.org/cheatsheets/_images/handout-intermediate.png)|
|`matplotlib`|Trucos.| Sí | [liga](https://matplotlib.org/cheatsheets/_images/handout-tips.png)|

## Guías

|Tema o Librería|Guía|Oficial|Liga|
|---|---|---|--|
|`matplotlit`|Guía de inicio rápido|Sí|[liga](https://matplotlib.org/stable/users/explain/quick_start.html)|
|`seaborn`|Tutoriales|Sí|[liga](https://seaborn.pydata.org/tutorial.html)|

## Libros de texto

|Libro|Autor|Liga|Comentario|
|-----|-----|----|----------|
|Think Python|Allen Downey|[liga](https://allendowney.github.io/ThinkPython/)|Excelente recurso, gratis, para comenzar a aprender python desde cero, con enfoque general.|
|Think Stats|Allen Downey|[liga](https://allendowney.github.io/ThinkStats/)|Libro gratis enfocado a aprender análisis estadístico con python.|
|Think Bayes|Allen Downey|[liga](https://allendowney.github.io/ThinkBayes2/)|Libro gratis para comenzar a aprender inferencia bayesiana en python.|
|Python for Data Analysis, 3E|Wes McKinney|[liga](https://wesmckinney.com/book/python-basics)|Libro gratis de texto para comenzar con análisis de datos en python.|

## Datasets

### Incluidos en este repositorio

- `bases/Heart_Attack_Data.csv`
- `bases/base_met.xlsx`
- `bases/datos_dx.csv`

### En librerías
|Librería|Método|Liga|
|---|---|---|
|`seaborn`|`load_dataset`|[liga](https://github.com/mwaskom/seaborn-data)|
|`statsmodels`|`datasets.get_rdataset`|[liga](https://www.statsmodels.org/stable/datasets/index.html)|
|`pingouin`|`read_dataset`|[liga](https://pingouin-stats.org/build/html/_modules/pingouin/datasets.html)|
|`bambi`|`load_data`|[liga](https://bambinos.github.io/bambi/api/load_data.html)|

### En la web
|Sitio|Descripción|Liga|
|---|---|---|
|Kaggle|Plataforma con multitud de conjuntos de datos y competiciones de análisis.|[liga](https://kaggle.com)|
|UCI Machine Learning Repository|Colección clásica y muy utilizada de datasets.|[liga](https://archive.ics.uci.edu)|
|GitHub|Muchos proyectos públicos incluyen datos que se pueden descargar libremente.|[liga](https://github.com/topics/datasets)|

## Herramientas y entornos

- **Jupyter Notebook/JupyterLab:** entornos de trabajo interactivo para ejecutar y documentar código.
- **Google Colab:** alternativa en la nube para ejecutar notebooks sin instalación local.
- **uv:** gestor de entornos utilizado en el repositorio para instalar dependencias.