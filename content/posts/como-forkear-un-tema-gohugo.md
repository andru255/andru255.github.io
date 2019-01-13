---
title: "Cómo forkear un tema en gohugo"
date: 2019-01-13T14:53:21Z
draft: false
---

Hola, en este post mostraré el cómo mantener tu propio tema a partir
de uno ya desarrollado.

En mi caso usé el tema [hugo-classic](https://github.com/goodroot/hugo-classic), y con el
tiempo fuí actualizandolo de formar local para generar los estilos que quería, y a la vez
tenía la necesidad de compartir este tema con estos nuevos cambios por github.

Si en un futuro deseo actualizar muchas cosas mas pues no hay mejor forma de aplicarle un fork al tema
original y crear uno nuestro :).

## Qué es forkear?

En este contexto, esta acción *spanglish* comunmente indica el generar un repo en github en base a otro repo alojado en la misma plataforma.


## Cómo forkeo el tema?

Existen muchas formas de forkear el tema que usas en gohugo, en mi caso ingreso a la consola donde la carpeta
de mi blog e ingreso:

```

~ cd themes/hugo-classic

~ git remote -v

```

Este último comando pintará:

```

origin	https://github.com/goodroot/hugo-classic.git (fetch)

origin	https://github.com/goodroot/hugo-classic.git (push)

```

Genial!, ahora copio y pego esa URL en un navegador, y sigo [los pasos que github indica para forkear un repo](https://help.github.com/articles/fork-a-repo/)


## Cómo establezo mi nuevo tema en mi blog?

Una vez realizado el fork, cambiamos el `origin` del repo del tema que tenemos, me dirigo a mi carpeta donde está mi blog y con estos comandos:

```

~ cd themes/hugo-classic

~ git remote set-url origin https://github.com/andru255/hugo-classic.git

```

Estamos indicando que nuestro nexo ya no será el theme original, sino un fork donde está alojado en nuestra cuenta de github. Genial!

# NOTA:
> En el último comando, donde almaceno el nuevo `origin`, agregué a la url el sufijo **.git**, para mas información del por qué se necesita puedes revisar la documentación. [^1]

## Cómo envío mis cambios a mi nuevo repo?

Me aseguro que estoy en la carpeta raíz de mi blog, y luego realizo estos comandos:

```

~ cd themes/hugo-classic

~ git add .

~ git commit -am "feat(theme): Confirmando mis actualizaciones para mi propio tema"

~ git push origin master:master

```

En teoría debería enviar bien, pero si suceden errores al envío no hay problema.

## Errores comunes al enviar mis cambios

Ayuda!, esto pinta en la consola, qué hago?:

```
! [rejected]        master -> master (fetch first)
error: failed to push some refs to ...
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

Existen muchas soluciones para resolver este caso, pero en este contexto es ejecutando:

```
~ git push origin +master:master
```

Aplicando el símbolo **+** como prefijo indicámos a git que fuerze el envío de nuestros cambios a nuestro rama destino.

## Actualizando el archivo .gitmodules

Tengo un archivo de nombre `.gitmodules` en la raíz de la carpeta del blog y también tengo que actualizarlo
con la URL de mi tema.

Este es el contenido inicial del archivo:

```
[submodule "themes/hugo-classic"]
	path = themes/hugo-classic
	url = https://github.com/goodroot/hugo-classic.git
```

Para actualizarlo debes aplicar estos comandos en la carpeta raiz del blog:

```
~ git submodule deinit themes/hugo-classic
~ git rm themes/hugo-classic
~ rm -fr .git/modules/themes/hugo-classic
~ git submodule add https://github.com/andru255/hugo-classic.git themes/hugo-classic
~ git commit -am "chore(submodule): Updating the hugo-classic reference"
```

Con estos comandos indicamos:

- Necesitamos deinicializar [^2] nuestro actual submodule y luego removerlo
- Adicionamos de nuevo con nuestro nuevo submodulo.

## Obteniendo los últimos cambios de mi tema

En la carpeta raíz del blog, es necesario ejecutar el estado del repositorio con el comando:

```
git status
```

Si imprime este resultado:

```
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   themes/hugo-classic (modified content)

no changes added to commit (use "git add" and/or "git commit -a")
```

Por más que enviaste tus nuevos cambios a tu nuevo tema debemos realizar la actualización del submódulo donde lo definimos, ubicándote aún en la raiz de la carpeta del blog ejecutamos el comando:

```
~ git submodule update --recursive --remote
```

Y listo tenemos nuestro blog con lo más reciente de nuestro tema :)

### Créditos / Gracias a:

- [goodroot/hugo-classic: A simple and text-centric theme for Hugo.io] (https://github.com/goodroot/hugo-classic)
- [Fork A Repo - User Documentation](https://help.github.com/articles/fork-a-repo/)
- [Git submodule add: "a git directory is found locally" issue - Stack Overflow](https://stackoverflow.com/a/35778105)
- [git - How do I remove a submodule? - Stack Overflow](https://stackoverflow.com/a/1260982)
- [Git submodules: core concept, workflows, and tips - Atlassian Blog](https://www.atlassian.com/blog/git/git-submodules-workflows-tips)
- [Easy way to pull latest of all git submodules](https://stackoverflow.com/questions/1030169/easy-way-to-pull-latest-of-all-git-submodules)

[^1]: [Git - git-remote Documentation](https://git-scm.com/docs/git-remote#git-remote-emset-urlem ) 
[^2]: [Git - git-submodule Documentation](https://git-scm.com/docs/git-submodule#git-submodule-deinit-f--force--all--ltpathgt82308203)