---
title: "Parte 1: Algorítmica"
parent: "Tema 2: Generalidades"
nav_order: 1
---

# Parte 1: Algorítmica

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

Realizar un flujograma de los pasos necesarios para resolver un problema.
Se divide el problema en sus partes esenciales y se ordena la secuencia de procesos para resolverlos.
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

Al tener el algoritmo, flujograma, de cómo resolver el problema, se puede traducir a un lenguaje de programación, python por ejemplo, para resolver el problema en forma automatizada.

```{mermaid}
flowchart LR

  A[Algoritmo] -->|Se transforma en| B["Programa (Python)"]
  B --> C[Computadora]
  A --> D[Diagrama de flujo] --> B
  A --> E[Pseudocódigo] --> B
```

:::{admonition} Información crítica
:class: error
 
En programación, es fundamental comprender el problema a resolver tal que pueda fragmentarse en unidades elementales que puedan ser transformados a código y ejecutados por la computadora.
:::


## Pŕactica personal:

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
  D5 --> D6[Presionar y girar sobre jarra]
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

