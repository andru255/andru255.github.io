---
title: "How To Play With Custom Fonts"
date: 2017-11-26T22:37:52-05:00
draft: false
---

In this post, I show you how it works the custom fonts and how implement into a hugo theme,
On my case I choose I use [fontin sans](https://www.exljbris.com/fontinsans.html) for the body content 'cause it's really good and to see a serif font with smooth details, easy to read.

And I use [Butler](https://www.behance.net/gallery/27753367/Butler-FREE-FONT-14-weights) for the my the title, cause it's good and original to apply a serif font to every title and makes a litle contrast with content.

## About the webfonts

Downloading [fontin sans](https://www.exljbris.com/fontinsans.html) we will see only files with extension **.otf**, but researching on the internet, I'm not only need that files, it needs a files with **.ttf**, **.woff** and **.woff2** extension because it's a standard and more compatible with almost all browsers [^1], **.otf** files it's only for IE browsers.

## Generating the required format

I use a friendly tool to generate the required formats, it's called [Font Squirrel Generator](https://www.fontsquirrel.com/tools/webfont-generator), you only need upload the file with extension **.otf**, then, accept the **Agreement**, and finally for a litte time ago, automatically download the files mentioned before with a demo :)

## Putting on my theme
The css file generated from my online tool, has the name `stylesheet.css`, we need copy all the content and paste at the top of the file `fonts.css`, that file is located in `~/mysites/andru255.github.io/themes/hugo-classic/static/css/` 

And then font files downloaded with extension mentioned before, needs to be relocate into the path `~/mysites/andru255.github.io/themes/hugo-classic/static/css/fonts/`

Finally, we need to update the **src** property for every rule into our `font.css` file, an example:

```css
@font-face {
  font-family: 'fontin_sans_rgbold_italic';
  src: url('fontin_sans_bi_45b-webfont.woff2') format('woff2'),
       url('fontin_sans_bi_45b-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
```

We need to update like this, the difference it's only on **src** property, 
because we have the font files into the folder **fonts**:

```css
@font-face {
  font-family: 'fontin_sans_rgbold_italic';
  src: url('./fonts/fontin_sans_bi_45b-webfont.woff2') format('woff2'),
       url('./fonts/fontin_sans_bi_45b-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
```

And We need to update all the **src** properties who exists on the file.

## Make things happen

On the `font.css` file, we need to update the **body** rule:

```css
body {
  font-family: -apple-system, BlinkMacSystemFont, 'Avenir Next', Avenir, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol';
}
```

to

```css
body {
  font-family: 'fontin_sans_rgregular';
}
```

Before submit my changes, I test before on localhost [following the steps of getting up a local hugo server](/blog/posts/welcome#a-live-site)


## New look and feel :)

As you see a litte UI changes, you can see more on my [theme repo](https://github.com/andru255/hugo-classic)

## NOTES:
> - The **Blutter font** contains already the required fonts.
> - The **Blutter font** has the same idea with a file called **stylesheet.css**, that file is located in
> `Butler_and_ButlerStencil/Butler_Webfont` folder, follow the steps above and we have ready our changes

### Credits / Thanks to:

- [Best Practices Of Combining Typefaces — Smashing Magazine](https://www.smashingmagazine.com/2010/11/best-practices-of-combining-typefaces/)

- [How To Choose A Font — A Step-By-Step Guide! — Smashing Magazine](https://www.smashingmagazine.com/2011/03/how-to-choose-a-typeface/)


[^1]: [Can I use... Support tables for HTML5, CSS3, etc](https://caniuse.com/#search=woff)