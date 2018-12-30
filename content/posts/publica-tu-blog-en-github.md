---
title: "Publica Tu Blog en Github"
date: 2018-12-29T23:17:31Z
draft: false
---

En este post explicaré los pasos a tomar para publicar un blog en html a github

## Conociendo Github pages
[ Github pages ](https://pages.github.com/) es increíble para alojar tu blog, proyectos e incluso experimentos en html, en este caso, creo un nuevo repositorio por la página de github, en mi caso **andru255.github.io** por el formato que es **[my-nickname].github.io**

![New github repo](../how-publish-in-github/creating-github-repo.gif)

Seguimos las instrucciones que indica github una vez se haya creado nuestro repo, hacemos una prueba clonando y agregamos un archivo con extension **.html**:

```
~ git clone https://github.com/andru255/andru255.github.io ~/my-sites/test-my-github-blog

~ cd ~/my-sites/test-my-github-blog

~ echo "Estrenando mi archivo en github pages, será genial! :)" > index.html

~ git add .

~ git commit -am "mi archivo index.html"

~ git push origin master

```

![3 doritos después](../how-publish-in-github/3doritos.jpg)


Esperamos unos minutos, y luego ingresamos a la URL https://andru255.github.io/

**OJO! :** [ Github pages ](https://pages.github.com/) como mencioné anteriormente, sólo te permite visualizar archivos con extensión .html, .js, .css, e imágenes de formatos conodicos, **NO INTERPRETA ARCHIVOS CON EXTENSIÓN  .php, .py, .rb, etc**.

## Continúemos con nuestro blog en goHugo

Necesitamos generar archivos con las extensiones permitidas (html, js, css), nos ubicamos a nuestra carpeta [my-site]:

```
~ cd ~/my-sites/[my-site]
```

Luego, Cambiamos el valor de la variable **baseUrl** en el archivo **config.toml**:

```
baseUrl="http://example.org"
```

a

```
baseUrl="http://localhost:8000"
```

Actualizamos a esa URL, porque necesitamos tener una visualización previa, ejecutamos este comando:

```
~ hugo -D
```

Donde:

- *-D*, Incluímos contenido que está como borrador

Este comando generará una carpeta de nombre **public**, donde erueka! está nuestro blog con archivos 
de extensión válida (html, css, js)

Usamos una emulación de forma local, ejecutando en consola estos comandos:

```
~ cd public
~ python -m SimpleHTTPServer 8000
```

Este último comando crea un servidor web en nuestro equipo (si deseas conocer más acerca de este comando, en la sección de créditos)

Abrimos la URL: http://localhost:8000

Awesome!!

## Github + Hugo

Ahora que conocemos de ambos lados, hacemos la combinación perfecta:

```
~ cd ~/my-sites/[my-site]
```

Cambiamos el valor de la variable **baseUrl** en el archivo **config.toml**:

```
baseUrl="http://example.org"
```

a

```
baseUrl="https://andru255.github.io/blog"
```

Generamos los archivos que necesitamos:

```
~ hugo -D
```

Genial!, Ahora viene lo bueno, lo subimos a nuestro repo de github:

```
~ git add .

~ git commit -am "1st attempt: My blog ready"

~ git push origin master

```

## Alojando en una ruta personalizada

Si deseo visualizar mi blog en la URL https://andru255.github.io/blog,

Actualizo la variable **publishDir** con el valor **blog**:

```
publishDir = "blog"
```

Se visualizará una nueva carpeta llamada **blog**, luego repito los pasos para generar mis archivos necesarios y el envío a mi repositorio.

Remuevo la carpeta **public** generada anteriormente para evitar confusiones.

### ANOTACIONES

- Puede visualizarse una advertencia en github cuando un repo está vacío, pero no te preocupes es normal.

### Créditos / Gracias a:

- [https://pages.github.com/](https://pages.github.com/)
- [https://gohugo.io/getting-started/usage/](https://gohugo.io/getting-started/usage/)
- [https://www.youtube.com/watch?v=3wkR8GyDODs](https://www.youtube.com/watch?v=3wkR8GyDODs)
- [https://help.github.com/](https://help.github.com/)
-[Configuring a publishing source for github pages](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/#publishing-your-github-pages-site-from-a-docs-folder-on-your-master-branch)

