---
title: "Template basics"
date: 2017-11-06T23:25:39-05:00
draft: true
---

Hi, in this post, I explain the fundamentals of theming for gohugo, 
getting starting with two important points **variables** and **functions** like gohugo documentation[^1].

## Variables

It's very interesting to implement a variable in our theme, I show you examples into the `themes/hugo-classic/layouts/_default/list.html` file, currently has that content:

```
{{ partial "header.html" . }}
{{if not .IsHome }}
<h1>{{ .Title }}</h1>
{{ end }}

{{ .Content }}

<ul>
  {{ range (where .Data.Pages "Section" "!=" "") }}
  <li>
    <span class="date">{{ .Date.Format "2006/01/02" }}</span>
    <a href="{{ .URL }}">{{ .Title }}</a>
  </li>
  {{ end }}
</ul>

{{ partial "footer.html" . }}

```
And show my main list into my blog:

[Print screen here]

To print a variable needs to be between into one nested **brackets** like this:

```
{{ myVar }}
```


I append that code to my file to test and start my local hugo server, refresh the url `http://localhost:3131/blog/`, and nothing happens :'(
    
### what's wrong? where I define my custom variables?
There are many types of variables on hugo[^2], but I see, is usually to declaring a **global** variable is on [the configuration file](http://gohugo.io/getting-started/configuration/).

On my case is located in `~/mysites/andru255.github.io/config.toml`, hands on to append these lines:

```
[params]
myVar="cool :)"
```

but nothing happens again, following the docs again, I need to update my test file again replacing `{{ myVar }}` to `{{ .Site.Params.myVar }}`:

Reading forums, I see another term called **block**, and my main file config must be have the **block** called **Params** for declare custom variables visible to all my site, great!


############ TODO:
- Linking the forums to thanks/credits sections.

- Talk to blocks on a future posts and linking with that post.

- Possible second post about variables, because it needs to apply for contexts (global, only theme, etc).

- Continue with functions concepts.

## Thanks/ Credits:

[^1]: [Hugo  | Introduction to Hugo Templating](http://gohugo.io/templates/introduction/#basic-syntax)