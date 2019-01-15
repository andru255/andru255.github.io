---
title: "Cómo Usar Fuentes Personalizadas"
date: 2019-01-02T00:18:05Z
draft: false
---

En este post, enseñaré cómo funcionan las fuentes personalizadas en el navegador y luego
cómo implementarlo en un tema de hugo.

En este caso elegí [fontin sans](https://www.exljbris.com/fontinsans.html) para los párrafos y al
ser un tipo serif en suaves detalles, fácil de leer.

Además, usaré la fuente llamada [Butler](https://www.behance.net/gallery/27753367/Butler-FREE-FONT-14-weights) para los títulos, porque lo veo muy elegante en las portadas.

## Qué son los webfonts y para qué sirven?

Son aquellas tipografías que no siempre están instaladas en tu equipo, y son visibles a través de un navegador.

Descargando [fontin sans](https://www.exljbris.com/fontinsans.html) ofrecerá la fuente con extensión **.otf**,
pero para un soporte para todo navegador[^1], necesitamos archivos con extensión **.ttf**, **.woff** y **.woff2**,la extensión **.otf** solamente es pásabale para Internet Explorer 8 para atrás.

## Generando mis webfonts

Usando la herramienta amigable [Font Squirrel Generator](https://www.fontsquirrel.com/tools/webfont-generator),
solamente necesitas subir el archivo de la tipografía con extensión **.otf**, luego aceptas los términos y
condiciones, y finalmente envías el formulario.

Si no se presentan errores, automáticamente se realizará la descarga de un archivo empaquetado incluyendo dentro 
de este una pequeña demo.

## Agregándolo a mi tema de hugo

En el empaquetado también encontramos un archivo de nombre `stylesheet.css`, copiámos todo el contenido de
este archivo y lo pegamos al inicio del archivo `fonts.css`, este último archivo está en `~/mysites/andru255.github.io/themes/hugo-classic/static/css/`


Luego los archivos con la extensión mencionada anteriormente, los muevo a `~/mysites/andru255.github.io/themes/hugo-classic/static/css/fonts/`


Finalmente, actualizo la propiedad **src** para toda regla en el archivo `font.css`, tomando este modelo:

```css
@font-face {
  font-family: 'fontin_sans_rgbold_italic';
  src: url('fontin_sans_bi_45b-webfont.woff2') format('woff2'),
       url('fontin_sans_bi_45b-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
```

El único cambio que debemos hacer en la propiedad **src**, es indicarle la nueva ruta de los archivos de tipografía:

```css
@font-face {
  font-family: 'fontin_sans_rgbold_italic';
  src: url('./fonts/fontin_sans_bi_45b-webfont.woff2') format('woff2'),
       url('./fonts/fontin_sans_bi_45b-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
```

Aplicamos a todas la coincidencias que encontremos en el archivo `font.css`.

## Visualizando la fuente personalizada

En nuestro archivo `font.css`, actualizamos la regla **body** en la propiedad **font-family**:

```css
body {
  font-family: -apple-system, BlinkMacSystemFont, 'Avenir Next', Avenir, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol';
}
```

a

```css
body {
  font-family: 'fontin_sans_rgregular';
}
```

Previo a enviar mis cambios, Lo verifico en mi equipo local [Siguiendo los pasos de cómo visualizarlo en local](/blog/posts/bienvenido#está-vivo-está-vivo)


## Un nuevo look and feel :)

Este y otros cambios de estilos lo puedes encontrar en un fork que realicé del tema original [hugo-classic](https://github.com/andru255/hugo-classic)

## NOTAS:
> - La fuente **Butler** ya ofrece los archivos necesarios para implementarlo en la web.
> - En el paquete que ofrece la fuente **Butler** contiene un archivo **stylesheet.css**, lo puedes encontrar en la carpeta
> `Butler_and_ButlerStencil/Butler_Webfont`, y sigues los pasos de cómo implementarlo en el tema.

### Créditos / Gracias a:

- [Best Practices Of Combining Typefaces — Smashing Magazine](https://www.smashingmagazine.com/2010/11/best-practices-of-combining-typefaces/)
- [How To Choose A Font — A Step-By-Step Guide! — Smashing Magazine](https://www.smashingmagazine.com/2011/03/how-to-choose-a-typeface/)

[^1]: [Can I use... Support tables for HTML5, CSS3, etc](https://caniuse.com/#search=woff)