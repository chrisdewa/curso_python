---
title: "Parte 2: Algorítmica"
parent: "Tema 2: Generalidades"
nav_order: 2
---

# Parte 2: Algorítmica

**Tabla de contenidos**
* TOC
{:toc}

## Algoritmo

{: .tip-title }
> ¿Qué es un algoritmo?
>
> De acuerdo a la Rae, se define como:
>> *Quizá del lat. tardío *algobarismus, y este abrev. del ár. clás. ḥisābu lḡubār 'cálculo mediante cifras arábigas'.*
>>
>> m. Conjunto ordenado y finito de operaciones que permite hallar la solución de un problema.
    m. Método y notación en las distintas formas del cálculo.

### Idea básica

```mermaid
flowchart TD
  A[Problema o necesidad] --> B[Idea de solución]
  B --> C[Algoritmo]
  C --> D[Código]
  D --> E[Computadora ejecuta el programa]
  E --> F[Resultado útil o automatización]
  F --> B
```
### Ejecución
```mermaid
flowchart LR

  A[Algoritmo] -->|Se transforma en| B["Programa (Python)"]
  B --> C[Computadora]
  A --> D[Diagrama de flujo] --> B
  A --> E[Pseudocódigo] --> B
```

## Uso

{: .important-title}
> Información crítica
> 
> En programación, es fundamental comprender el problema a resolver tal que pueda fragmentarse en unidades elementales que puedan ser transformados a código y ejecutados por la computadora.

## Pŕactica personal:

Utiliza las plataformas [draw.io](https://draw.io), canva, microsoft office o cualquier otro programa para diseñar un algoritmo de cómo se prepara un sandwich de cacahuate con mermelada. 

Aquí hay un ejemplo de cómo hacer limonada:

```mermaid
flowchart TD
  A[Reunir ingredientes y utensilios] --> B[Lavar limones]

  B --> C[Iniciar preparación de limones]
  C --> D1[Tomar limones desde el primero hasta el último]

  D1 --> D2[Tomar cuchillo]
  D2 --> D3[Cortar por la mitad]
  D3 --> D4[Separar mitades]
  D4 --> D41[mitad 1] & D42[mitad 2] --> D5[Agregar mitad al exprimidor]
  D5 --> D6[Presionar y girar sobre jarra]
  D6 --> D8{¿Quedan más limones?}

  D8 -- Sí --> D1
  D8 -- No --> F[Agregar agua fría]
  F --> G[Agregar azúcar con cuchara]
  G --> H[Revolver con cuchara]
  H --> I[Probar con cuchara limpia]
  I --> J{¿Sabor adecuado?}
  J -- No --> G
  J -- Sí --> K[Servir en vaso con hielo]

```