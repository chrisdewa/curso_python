# Unidad 5: Análisis Bayesianos

En esta unidad se revisará de forma concisa cómo realizar análisis bayesianos desde una perspectiva programática de alto nivel.

Si bien es posible resolver problemas de asociación, comparación de pares o correlación mediante métodos cerrados, como los Factores de Bayes, para análisis más complejos, incluida la regresión, es necesario emplear métodos de Montecarlo basados en cadenas de Markov. La implementación de estos métodos puede resultar compleja; sin embargo, el uso de librerías de alto nivel, como `bambi`, permite simplificar considerablemente el proceso.

:::{important}
Para esta libreta utilizaremos las siguientes librerías, asegúrate de tenerlas instaladas.
- `bambi`
- `pingouin`

Instálalas con:
```bash
uv add bambi pingouin
```
o con:
```bash
pip install bambi pingouin
```
O si estás en google colab, puedes hacerlo en una celda de código así:
```bash
!pip install -q bambi pingouin
```
:::