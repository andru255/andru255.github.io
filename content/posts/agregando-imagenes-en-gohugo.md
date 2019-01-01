---
title: "Agregando Imágenes en Gohugo"
date: 2019-01-01T02:46:13Z
draft: false
---

En este post explicaré cómo agregar/quitar imágenes en el contenido de un post con gohugo 

## Conociendo el folder content

La carpeta **content** contiene todos los posts con extensión **.md**, y eso es todo :)

## Implementando una imagen

Creamos una imagen llamada **handling-images**:

```

~ cd [my-site]

~ hugo new posts/handling-images

```

Luego, ubico el archivo generado en la ruta correspondiente, por ejemplo a mi me generó en:

```

[my-site]/content/posts/handling-images.md

```

Ahora nos dirijimos a la carpeta **posts**, y creamos una carpeta con el nombre del post:

```

~ cd [my-site]/content/posts/

~ mkdir handling-images

```

Agregamos a esa carpeta una imagen, en mi caso alojé una imagen de nombre **awesome-bro.jpg**, y finalmente
agregamos esta línea en mi post o archivo **handling-images.md**

```

![cool](../handling-images/awesome-bro.jpg)

```

y como resultado debe salir así:

![cool](../handling-images/awesome-bro.jpg)

Genial!, además podemos asociar un link a nuestra imagen de esta manera:

```

[![](../handling-images/github.png)](http://github.com/andru255)

```

[![](../handling-images/github.png)](http://github.com/andru255)


### Créditos / Gracias a:

- [https://pages.github.com/](https://pages.github.com/)
- [https://meta.stackexchange.com/a/38917](https://meta.stackexchange.com/a/38917)
- [https://github.com/gohugoio/hugo/issues/1014](https://github.com/gohugoio/hugo/issues/1014)
- [https://gist.github.com/uupaa/f77d2bcf4dc7a294d109](https://gist.github.com/uupaa/f77d2bcf4dc7a294d109)