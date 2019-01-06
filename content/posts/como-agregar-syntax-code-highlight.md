---
title: "Como Agregar Syntax Code Highlight"
date: 2019-01-06T04:01:36Z
draft: false
---

Hola, en este tutorial enseñaré a cómo agregar un estilo de resaltar texto dándo
el aspecto de código.

![atom one light](../adding-syntax-code-highlight/atom-one-light.png)

## Uso de la librería base

Edito el archivo `~/mysites/andru255.github.io/themes/hugo-classic/layouts/partials/header.html` agregando lo siguiente en la etiqueta **head**:

```
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
```

## Agregando el estilo al html

Edito el archivo `~/mysites/andru255.github.io/themes/hugo-classic/layouts/partials/header.html` y preferible antes de la librería base agrego:

En este caso estoy indicando que voy a iniciar con el estilo [dracula](https://draculatheme.com/highlightjs/)

```
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/dracula.min.css">
```

Se recomienda usar un estilo, en caso haya otro estilo previo debe removerse quitando solo la etiqueta **link**

## Código final

En conclusión, siguiendo los pasos anteriores debe quedar así:

```
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/dracula.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
```

## Construccion y envío a github pages

Si deseas visualizarlo en local [sigue los pasos de cómo visualizarlo en local](/blog/posts/bienvenido#está-vivo-está-vivo)
y [ envío mis cambios ](/blog/posts/publica-tu-blog-en-github/#generación-del-sitio-y-envío-de-mis-cambios-github)


El resultado debe ser así:

![dracula theme](../adding-syntax-code-highlight/dracula.png)

### Créditos / Gracias a:
- [Markdown Cheatsheet - Code and Syntax Highlighting](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#code-and-syntax-highlighting)
- [https://highlightjs.org/](https://highlightjs.org/)
- [https://draculatheme.com/highlightjs/](https://draculatheme.com/highlightjs/)
















