---
title: "Bienvenido"
date: 2017-08-05T12:17:18-05:00
draft: true
---

Bienvenido a mi blog, explicaré sobre el cómo llegué a implementarlo

## Pre-requisitos 

- [ Git ](https://git-scm.com/) v2.13.0
- [ Una cuenta en github ](https://github.com) Si no tienes una, que esperas!
- [ Hugo ](https://gohugo.io/) v0.25.1

Actualmente uso una máquina en lubuntu 16.04

## Creando mi sitio web

Como standard, voy a trabajar en el directorio */home/*, y realizo los siguientes comandos: 

```
~ mkdir mysites

~ cd mysites

~ hugo new site [my-site]

```

*[my-site]* crea una carpeta con el nombre que le has puesto, en mi caso lo hice con el nombre andru255.github.io

## Agregando un skin

Uso [hugo-classic](https://github.com/goodroot/hugo-classic), y así lo instalé

```
~ cd [your-site]

~ git init

~ git submodule add https://github.com/goodroot/hugo-classic.git themes/hugo-classic 

~ echo 'theme = "hugo-classic"' >> config.toml 
```

## Creando un post de bienvenida

```
~ hugo new post/welcome.md

~ echo "# Hi, gracias hugo por crear mi blog :)" >> post/welcome.md
```

##  Está vivo! está vivo!

Para ver nuestro blog en el navegador, ejecutamos el siguiente comando:

```
~ hugo server -D -v
```

Donde:

- *-D*, inicia el proceso, y dicho proceso estará atento a todo cambio que realices
- *-v*, Este parámetro te permite ver más detalladamente que hace dicho proceso

Finalmente, para ver el sitio, abrimos un navegador e ingresamos a la dirección url: http://localhost:1313

## NOTAS

Actualmente estoy desarrollando posts en [inglés](/posts/welcome) para un futuro manejo de i18n, por 
el momento explicaré de a pocos el poder de hugo para crear un blog :)

### Créditos / gracias a:

- [https://gohugo.io/getting-started/quick-start/] (https://gohugo.io/getting-started/quick-start/)
- [https://gohugo.io/getting-started/installing/] (https://gohugo.io/getting-started/installing/)
- [https://www.youtube.com/watch?v=3wkR8GyDODs] (https://www.youtube.com/watch?v=3wkR8GyDODs)