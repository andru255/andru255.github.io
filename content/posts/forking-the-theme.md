---
title: "Forking The Theme"
date: 2017-11-04T21:38:41-05:00
draft: false
---

Hi!, In this post I will show you a great tip to mantain your personal theme,
but, in my case I use the [hugo-classic](https://github.com/goodroot/hugo-classic)

In many cases, I built some changes on it, and I want to customize more in the future, 
so I need to fork the original theme for my own maintenance.

## Find the origin and fork it

I found the repo path with the following commands on my repo:

```
~ cd themes/hugo-classic
~ git remote -v
```

When I executed the command `git remote -v` shows me:

```
origin	https://github.com/goodroot/hugo-classic.git (fetch)
origin	https://github.com/goodroot/hugo-classic.git (push)
```

Nice!, I only copy and paste that URL to my favorite browser, and follow [the github steps to forking a repo](https://help.github.com/articles/fork-a-repo/)

## Setup the new origin

Once forked, I changed the origin with these commands:

```
~ cd themes/hugo-classic
~ git remote set-url origin https://github.com/andru255/hugo-classic.git
```

The last command tells to git, set the new origin with to my new URL append the **.git** suffix, for more information you can check git documentation.[^1]

Then, I prepare my changes and submit to my forked repo:

```
~ git add .
~ git commit -am "feat(theme): Customizing the favicon and code display"
~ git push origin master:master
```

## Common pitfalls

> "Help! Something happens when I upload my changes, git warns me that I need to pull from the remote repo"
```
! [rejected]        master -> master (fetch first)
error: failed to push some refs to ...
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

If you have problems like that, you have many solutions,
go to terminal and hands on:

### 1st solution - My changes are the only one

That solution force my local commits replace all the commits from my current forked repo

```
~ git push origin +master:master
```

### Another solution - My changes + enhancements for the original repo

That solution, it's recommended, but be careful:

```
~ git branch github_master origin/master
~ git checkout github_master
~ git pull origin master:github_master
~ git checkout master
~ git rebase -i github_master
~ git push origin master:master
```

If `git rebase -i github_master` is new for You, no problem, may be needs to be learn more about that [^2] **it's really nice!** or use instead `git merge github_master` 

## Updating my git submodule

I have in my **.gitmodules** file with this content:

```
[submodule "themes/hugo-classic"]
	path = themes/hugo-classic
	url = https://github.com/goodroot/hugo-classic.git
```

For update you need to follow this commands:

```
~ git submodule deinit themes/hugo-classic
~ git rm themes/hugo-classic
~ rm -fr .git/modules/themes/hugo-classic
~ git submodule add https://github.com/andru255/hugo-classic.git themes/hugo-classic
~ git commit -am "chore(submodule): Updating the hugo-classic reference"
```

Take care about these commands:

- First, It's not simply remove our current submodule on git.
- We need to deinitialize [^3] our current submodule and remove
- Finally, adding again with our new submodule

### NOTES

Remember all commands explained in this post was executed 
into my folder **~/mysites/andru255.github.io/**, so take care about 
your blog path

### Credits / Thanks to:

- [goodroot/hugo-classic: A simple and text-centric theme for Hugo.io] (https://github.com/goodroot/hugo-classic)
- [Fork A Repo - User Documentation](https://help.github.com/articles/fork-a-repo/)
- [Git submodule add: "a git directory is found locally" issue - Stack Overflow](https://stackoverflow.com/a/35778105)
- [git - How do I remove a submodule? - Stack Overflow](https://stackoverflow.com/a/1260982)
- [Git submodules: core concept, workflows, and tips - Atlassian Blog](https://www.atlassian.com/blog/git/git-submodules-workflows-tips)

[^1]: [Git - git-remote Documentation](https://git-scm.com/docs/git-remote#git-remote-emset-urlem ) 
[^2]: [Git - git-rebase Documentation](https://git-scm.com/docs/git-rebase#git-rebase--i) 
[^3]: [Git - git-submodule Documentation](https://git-scm.com/docs/git-submodule#git-submodule-deinit-f--force--all--ltpathgt82308203)