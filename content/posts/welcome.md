---
title: "Welcome"
date: 2017-07-30T17:10:06Z
draft: true
---

Welcome to my blog, I explain how setup that site

## Pre-requisites 

- [ Git ](https://git-scm.com/) v2.13.0
- [ An github account  ](https://github.com) If you don't have, make one!
- [ Hugo ](https://gohugo.io/) v0.25.1

Currently I use a [lubuntu](http://lubuntu.net/) v16.04 distro

## Setup a new site

```
~ mkdir mysites

~ cd mysites

~ hugo new site [my-site]

```

*[my-site]* creates a folder with this name, in my case I named andru255.github.io

## Adding a theme

I use [hugo-classic](https://github.com/goodroot/hugo-classic), so let's start to install

```
~ cd [my-site]

~ git init

~ git submodule add https://github.com/goodroot/hugo-classic.git themes/hugo-classic 

~ echo 'theme = "hugo-classic"' >> config.toml 
```

## Creating a welcome post

```
~ hugo new post/welcome.md

~ echo "# Hi, welcome to my new blog :)" >> post/welcome.md
```

## A live site!

For start our live site in local

```
~ hugo server -D -v
```

Where:

- *server*, start the daemon, and it's listen about new changes
- *-D*, shows content marked as draft
- *-v*, This parameter gives a detail info of our site when its start

Finally, open your favorite browser and go to http://localhost:1313

If do you want to continue about how to publish into github, please open this [link](../how-publish-in-github)

### Credits / Thanks to:

- [https://gohugo.io/getting-started/quick-start/] (https://gohugo.io/getting-started/quick-start/)
- [https://gohugo.io/getting-started/installing/] (https://gohugo.io/getting-started/installing/)
- [https://www.youtube.com/watch?v=3wkR8GyDODs] (https://www.youtube.com/watch?v=3wkR8GyDODs)