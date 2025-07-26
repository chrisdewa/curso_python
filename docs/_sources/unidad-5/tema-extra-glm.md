# Tema extra: Regresión logística y GLM en `statsmodels`

:::{note}
Este tema **no es una libreta ejecutable**, sino una guía de referencia en formato Markdown. Puedes consultarla para ajustar modelos de regresión logística y otros modelos lineales generalizados (GLM) usando `statsmodels` en Python.
:::

## ¿Qué es un modelo lineal generalizado (GLM)?

Un **GLM** es una extensión del modelo de regresión lineal que permite modelar variables dependientes que no siguen una distribución normal continua. En lugar de asumir que la variable respuesta tiene distribución normal, se puede especificar una distribución adecuada al tipo de dato, junto con una función de enlace.

### Componentes de un GLM

1. **Componente aleatorio**: la distribución de la variable respuesta (binomial, Poisson, gamma, etc.)
2. **Componente sistemático**: combinación lineal de predictores (Xβ)
3. **Función de enlace**: conecta la media esperada de la respuesta con la predicción lineal

---

## API disponibles en `statsmodels`

`statsmodels` ofrece dos formas principales de ajustar modelos:

- **API de fórmulas** (`statsmodels.formula.api`, abreviado `smf`): usa una notación tipo R, como `"y ~ x1 + x2"`.
- **API de clases** (`statsmodels.api`, abreviado `sm`): permite más control, útil para programación avanzada o modelado explícito.

---

## Regresión logística

La **regresión logística** es un caso especial de GLM donde la variable dependiente es binaria (0/1) y la función de enlace es la logística (logit). El modelo estima la probabilidad de que un evento ocurra.

### Forma general del modelo:

$$
\log\left(\frac{\pi(x)}{1 - \pi(x)}\right) = \beta_0 + \beta_1 x_1 + \cdots + \beta_p x_p
$$

---

### 🔹 Opción 1: Usar `GLM` con familia `Binomial`

```python
import statsmodels.formula.api as smf
import statsmodels.api as sm

modelo = smf.glm(formula='y ~ x1 + x2', data=df, family=sm.families.Binomial())
resultado = modelo.fit()
print(resultado.summary())
```

> Esta opción es útil cuando se desea el marco general de GLM y permite cambiar fácilmente la función de enlace.

---

### 🔹 Opción 2: Usar `Logit` (modelo específico para respuesta binaria)

#### API de fórmulas (más simple)

```python
modelo = smf.logit(formula='y ~ x1 + x2', data=df)
resultado = modelo.fit()
```

#### API de clases (más control)

```python
import pandas as pd
import statsmodels.api as sm

X = df[['x1', 'x2']]
X = sm.add_constant(X)  # Agrega intercepto
y = df['y']

modelo = sm.Logit(y, X)
resultado = modelo.fit()
```

> Estas formas ofrecen acceso directo a métodos específicos de regresión logística, sin necesidad de definir una familia. Son más eficientes para variables binarias.

---

## Regresión de Poisson

Para conteos (por ejemplo, número de visitas, eventos, etc.), se usa:

```python
modelo = smf.glm(formula='y ~ x', data=df, family=sm.families.Poisson())
resultado = modelo.fit()
```

---

## Modificar la función de enlace

Puedes cambiar el enlace por defecto. Por ejemplo, para usar **Probit** en lugar de Logit:

```python
from statsmodels.genmod.families.links import probit

modelo = smf.glm('y ~ x1 + x2', data=df,
                 family=sm.families.Binomial(link=probit()))
resultado = modelo.fit()
```

---

## Interpretación y predicción

### Coeficientes y razones de momios

Los coeficientes están en escala de log-odds. Para obtener razones de momios (odds ratio):

```python
import numpy as np
np.exp(resultado.params)
```

### Predicción de probabilidades

```python
predicciones = resultado.predict(df)
print(predicciones.head())
```

---

## Evaluación del modelo

- **AIC / BIC**: Comparar modelos
- **Deviance residuals**: Evaluar ajuste
- **Pseudo-R²**: No está incluido directamente, pero puede calcularse
- **Test de Wald**: Verificado en `resultado.summary()`

---

## Distribuciones disponibles en `statsmodels` para GLM

| Tipo de respuesta | Distribución       | Enlace por defecto | Clase/familia                 |
|-------------------|--------------------|--------------------|-------------------------------|
| Continua          | Normal             | Identidad          | `sm.families.Gaussian()`      |
| Binaria           | Binomial           | Logit              | `sm.families.Binomial()`      |
| Conteos           | Poisson            | Log                | `sm.families.Poisson()`       |
| Proporciones      | Binomial           | Logit/Probit       | `sm.families.Binomial()`      |
| Tiempo/espera     | Inverse Gaussian   | Inversa cuadrática | `sm.families.InverseGaussian()` |
| Dispersa          | Gamma              | Inversa            | `sm.families.Gamma()`         |

---

## Conclusión

`statsmodels` proporciona dos formas equivalentes y complementarias para ajustar modelos de regresión logística y otros GLM. Para variables binarias, se recomienda `Logit` o `logit`; para estructuras más generales o cambio de enlace, `GLM` con `Binomial()` es la opción adecuada.

:::{tip}
Consulta la documentación oficial para más detalles y ejemplos:  
https://www.statsmodels.org/stable/glm.html  
https://www.statsmodels.org/stable/generated/statsmodels.discrete.discrete_model.Logit.html
:::
