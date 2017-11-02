---
title: "Handling Images"
date: 2017-09-04T19:14:21-05:00
draft: false
---

In this post, I explain my style of work with images

## Understanding the folder content

The folder **content** has all posts in **.md** extension, simply :)

## Implementation

I create a post called **handling-images**:

```
~ cd [my-site]

~ hugo new posts/handling-images

```

Then, I see my post in format .md, in this path **[my-site]/content/posts/handling-images.md**

Awesome!, we need go to **posts** folder, and create for standard a folder with the same name of my post

```
~ cd [my-site]/content/posts/

~ mkdir handling-images

```

Nice, once created, we allow my image called **awesome-bro.jpg** in that folder, by commands or a finder.

Then, I put this code into my file **handling-images.md**:

```
![cool](../handling-images/awesome-bro.jpg)
```

![cool](../handling-images/awesome-bro.jpg)

Cool!, at the moment exists to link to some new website, no redimentions, title or some attribute directly on markdown:

Putting this code into my file **handling-images.md**:

```
[![](../handling-images/github.png)](http://github.com/andru255)
```

[![](../handling-images/github.png)](http://github.com/andru255)


### Credits / Thanks to:

- [https://pages.github.com/](https://pages.github.com/)
- [https://meta.stackexchange.com/a/38917](https://meta.stackexchange.com/a/38917)
- [https://github.com/gohugoio/hugo/issues/1014](https://github.com/gohugoio/hugo/issues/1014)
- [https://gist.github.com/uupaa/f77d2bcf4dc7a294d109](https://gist.github.com/uupaa/f77d2bcf4dc7a294d109)