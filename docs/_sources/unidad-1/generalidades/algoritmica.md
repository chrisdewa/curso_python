
# Algorítmica

## Algoritmo

:::{admonition} ¿Qué es un algoritmo? 
:class: tip
De acuerdo a la Rae, se define como:
> *Quizá del lat. tardío *algobarismus, y este abrev. del ár. clás. ḥisābu lḡubār 'cálculo mediante cifras arábigas'.*
> 
> m. Conjunto ordenado y finito de operaciones que permite hallar la solución de un problema.
> m. Método y notación en las distintas formas del cálculo.
:::

### Idea básica

Al diseñar un algoritmo, se divide el problema en sus partes esenciales y se ordena la secuencia de procesos para resolverlos.
Este algoritmo puede representarse de diversas formas, por ejemplo, a través de flujogramas o pseudocódigo y posteriormente puede materializarse en código útil que ayude a resolver el problema.


Este flujograma permite al programador estructurar cómo resolver el problema en cuestión.

```{mermaid}
flowchart TD
  A[Problema o necesidad] --> B[Idea de solución]
  B --> C[Algoritmo]
  C --> D[Código]
  D --> E[Ejecuta el programa]
  E --> F[Resultado útil]
  F --> B
```

### Ejecución

Al tener el algoritmo, de cómo resolver el problema, se puede traducir a un lenguaje de programación, python por ejemplo, para resolver el problema en forma automatizada.

:::{important}

En programación, es fundamental comprender el problema a resolver tal que pueda fragmentarse en unidades elementales que puedan ser transformados a código y ejecutados por la computadora.
:::

## Práctica personal:

Utiliza las plataformas [draw.io](https://draw.io), canva, microsoft office o cualquier otro programa para diseñar un algoritmo de cómo se prepara un sandwich de cacahuate con mermelada. 

Aquí hay un ejemplo de cómo hacer limonada:

```{mermaid}
flowchart TD
  A[Reunir materiales] --> B[Lavar limones]

  B --> D1[Tomar cada limón]

  D1 --> D2[Tomar cuchillo]
  D2 --> D3[Cortar por la mitad]
  D3 --> D4[Separar mitades]
  D4 --> D41[mitad 1] & D42[mitad 2] --> D5[Agregar mitad al exprimidor]
  D5 --> D6[Exprimir sobre jarra]
  D6 --> D8{¿Quedan más limones?}

  D8 -- Sí --> D1
  D8 -- No --> F[Agregar agua fría]
  F --> G[Agregar azúcar]
  G --> H[Revolver con cuchara]
  H --> I[Probar]
  I --> J{¿Sabor adecuado?}
  J -- No --> G
  J -- Sí --> K[Servir en vaso con hielo]

```

:::{tip}
Te recomiendo que veas este video por Josh Darnit, muy relacionado con el ejercicio que tienes frente a tí.

https://www.youtube.com/watch?v=FN2RM-CHkuI

:::