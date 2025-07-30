
# Formulario Estadístico Extendido

Este documento contiene una recopilación exhaustiva de funciones estadísticas implementadas en Python, organizadas por categorías. Cada sección incluye la función, su fórmula (cuando aplica) y la implementación en Python usando bibliotecas como `numpy`, `scipy`, `statsmodels`, `pingouin` y `bambi`.


## Estadísticos Descriptivos

| Función                     | Fórmula                                         | Python |
|----------------------------|--------------------------------------------------|--------|
| Media   | $\bar{x} = \frac{1}{n} \sum_{i=1}^n x_i$                            | `np.mean(x)` |
| Mediana | valor que divide el conjunto en dos partes                          | `np.median(x)` |
| Moda    | valor más frecuente                                                 | `scipy.stats.mode(x, keepdims=False)` |
| Varianza muestral       | $s^2 = \frac{1}{n-1} \sum (x_i - \bar{x})^2$        | `np.var(x, ddof=1)` |
| Varianza poblacional    | $\sigma^2 = \frac{1}{n} \sum (x_i - \bar{x})^2$     | `np.var(x)` |
| Desviación estándar     | $s = \sqrt{s^2}$                                    | `np.std(x, ddof=1)` |
| Coef. de variación      | $CV = \frac{s}{\bar{x}}$                            | `scipy.stats.variation(x)` |
| Rango intercuartílico   | $IQR = Q_3 - Q_1$                                   | `scipy.stats.iqr(x)` |
| Asimetría (skew)        | $g_1 = \frac{1}{n} \sum \left(\frac{x_i - \bar{x}}{s}\right)^3$      | `scipy.stats.skew(x)` |
| Curtosis                | $g_2 = \frac{1}{n} \sum \left(\frac{x_i - \bar{x}}{s}\right)^4 - 3$  | `scipy.stats.kurtosis(x)` |
| Suma de cuadrados total | $\sum (x_i - \bar{x})^2$                                             | `np.sum((x - np.mean(x))**2)` |
| Covarianza              | $Cov(X, Y) = \frac{1}{n-1} \sum (x_i - \bar{x})(y_i - \bar{y})$      | `np.cov(x, y)[0,1]` |



## Inferencia Clásica

### Pruebas t y ANOVA

| Función                    | Fórmula                                                             | Python |
|---------------------------|---------------------------------------------------------------------|--------|
| t una muestra             | $t = \frac{\bar{x} - \mu_0}{s / \sqrt{n}}$                          | `scipy.stats.ttest_1samp(x, mu0)` |
| t muestras independientes | $t = \frac{\bar{x}_1 - \bar{x}_2}{\sqrt{\frac{s_1^2}{n_1} + \frac{s_2^2}{n_2}}}$ | `scipy.stats.ttest_ind(x1, x2)` |
| t pareada                 | $t = \frac{\bar{d}}{s_d / \sqrt{n}}$                                | `scipy.stats.ttest_rel(x1, x2)` |
| ANOVA una vía             | -                                                                   | `pingouin.anova(dv='y', between='grupo', data=df)` |
| ANOVA dos vías            | -                                                                   | `pingouin.anova(dv='y', between=['A','B'], data=df)` |

### Otros

| Función                          | Fórmula                                                      | Python |
|----------------------------------|--------------------------------------------------------------|--------|
| Chi² de independencia            | $\chi^2 = \sum \frac{(O - E)^2}{E}$                          | `scipy.stats.chi2_contingency(tabla)` |
| Intervalo confianza (media)     | $\bar{x} \pm t^* \frac{s}{\sqrt{n}}$                         | `scipy.stats.t.interval(...)` |
| Intervalo confianza (proporción)| $\hat{p} \pm z^* \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}$      | `statsmodels.stats.proportion_confint(...)` |
| Test de normalidad de Shapiro   | -                                                            | `scipy.stats.shapiro(x)` |

---

## Pruebas No Paramétricas

| Función                   | Descripción                              | Python |
|--------------------------|------------------------------------------|--------|
| Mann-Whitney U           | Alternativa a t para muestras independientes | `scipy.stats.mannwhitneyu(x1, x2)` |
| Wilcoxon pareado         | Alternativa a t pareada                     | `scipy.stats.wilcoxon(x1, x2)` |
| Kruskal-Wallis           | ANOVA no paramétrico                       | `scipy.stats.kruskal(x1, x2, ...)` |
| Friedman                 | ANOVA de medidas repetidas no paramétrico | `scipy.stats.friedmanchisquare(...)` |

---

## Correlaciones

| Función                        | Fórmula o descripción                             | Python |
|-------------------------------|---------------------------------------------------|--------|
| Pearson                       | $r = \frac{Cov(X,Y)}{s_X s_Y}$          | `scipy.stats.pearsonr(x, y)` |
| Spearman                      | basado en rangos                       | `scipy.stats.spearmanr(x, y)` |
| Kendall tau                   | pares concordantes y discordantes      | `scipy.stats.kendalltau(x, y)` |
| Punto-biserial                | correlación continua vs binaria        | `scipy.stats.pointbiserialr(x, y)` |
| Rango-biserial                | tamaño de efecto de Mann-Whitney       | `pingouin.compute_effsize(..., eftype='r')` |

---

##  Modelos

| Modelo                      | Fórmula o tipo                                   | Python |
|----------------------------|--------------------------------------------------|--------|
| Regresión lineal simple    | $y = \beta_0 + \beta_1 x$                        | `.statsmodels.formula.api.ols('y ~ x', data).fit()` |
| Regresión lineal múltiple  | $y = \beta_0 + \beta_1 x_1 + \dots + \beta_p x_p$| `statsmodels.formula.api.ols('y ~ x1 + x2', data).fit()` |
| Regresión logística        | $log\left(\frac{p}{1 - p}\right) = \beta_0 + \beta_1 x$ | `Logit(y, X).fit()` |
| Función expit  | $\frac{1}{1 + e^{-x}}$   | `scipy.special.expit` |

---

## Tamaño de Muestra

| Objetivo                         | Fórmula aproximada                                 | Python |
|----------------------------------|-----------------------------------------------------|--------|
| Proporción (conocida)           | $n = \frac{Z^2 p(1-p)}{E^2}$                        | `statsmodels.stats.proportion.proportion_effectsize()` + `TTestIndPower()` |
| Media (desv. conocida)          | $n = \left(\frac{Z \sigma}{E}\right)^2$            | `statsmodels.stats.power.TTestPower().solve_power(...)` |

---

## Inferencia Bayesiana

### Conceptos clave

- **Teorema de Bayes:**  
  $P(H \mid D) = \frac{P(D \mid H) \cdot P(H)}{P(D)}$

- **Distribución posterior:**  
  Resultado de combinar la verosimilitud con la distribución a priori.  
  En modelos simples puede calcularse de forma analítica, en modelos complejos se estima con métodos numéricos como MCMC.

- **Posterior predictiva:**  
  $p(\tilde{y} \mid D) = \int p(\tilde{y} \mid \theta) \cdot p(\theta \mid D) \, d\theta$

- **Intervalos de credibilidad:**  
  Rango de valores del parámetro que contiene una probabilidad dada (por ejemplo 95%) según la distribución posterior.  
  `arviz.hdi(idata, hdi_prob=0.95)`

- **Factor de Bayes (BF10):**  
  Relación de verosimilitudes entre el modelo alternativo y el nulo.  
  $BF_{10} = \frac{P(D \mid H_1)}{P(D \mid H_0)}$  
  `pingouin.bayesfactor_ttest(...)`

- **Estimación de parámetros con MCMC:**  
  `import bambi as bmb`  
  `model = bmb.Model("y ~ x", data)`  
  `idata = model.fit()`

- **Diagnóstico de convergencia:**  
  `arviz.plot_trace(idata)`  
  `arviz.summary(idata)`  
  `arviz.rhat(idata)`  
  `arviz.ess(idata)`

- **Visualización de resultados:**  
  `arviz.plot_posterior(idata)`  
  `arviz.plot_forest(idata)`  
  `arviz.plot_ppc(idata)`

- **Comparación de modelos bayesianos:**  
  `arviz.compare({ "modelo1": idata1, "modelo2": idata2 })`


Este formulario puede expandirse con medidas específicas según tus necesidades (series de tiempo, clustering, modelos mixtos, etc.).
