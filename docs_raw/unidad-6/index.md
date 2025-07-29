# Unidad 6: Actualización e Inferencia Bayesiana

En esta unidad se revisará de forma concisa cómo realizar análisis bayesianos desde una perspectiva programática de alto nivel.

Si bien es posible resolver problemas de asociación, comparación de pares o correlación mediante métodos cerrados, como los Factores de Bayes, para análisis más complejos, incluida la regresión, es necesario emplear métodos de Montecarlo basados en cadenas de Markov. La implementación de estos métodos puede resultar compleja; sin embargo, el uso de librerías de alto nivel, como `bambi`, permite simplificar considerablemente el proceso.

:::{important}
Para esta libreta utilizaremos las siguientes librerías, asegúrate de tenerlas instaladas.
- `bambi` (que requiere dos librerías adicionales)
- `pingouin`

Instálalas con:
```bash
uv add bambi pingouin ipywidgets numpyro
```
o con:
```bash
pip install bambi pingouin ipywidgets numpyro
```
O si estás en google colab, puedes hacerlo en una celda de código así:
```bash
!pip install -q bambi pingouin
```
:::

:::{warning}
En windows, es posible que necesites instalar g++, un compilador de código, Linux y mac casi siempre lo tienen instalado de fábrica. En windows te recomiendo que uses el paquete https://jmeubank.github.io/tdm-gcc/

:::
