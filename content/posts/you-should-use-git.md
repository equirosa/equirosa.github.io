---
title: "You Should Use Git"
date: 2020-06-30T10:40:52-06:00
draft: false
---

# You Should Use Git

I've noticed that, at the university I go to, many of my peers often have trouble
learning to use git (or any form of VCS, really) and, therefore, opt to simply
not use it at all.
I believe this is a mistake, by not using any sort of version control you subject
yourself to a whole host of difficulties and challenges if you simply let your
lack of comfort with such a tool get to you.

## Managing File Versions

This one seems like the obvious argument to make for a tool with "version control"
in its name, but I've noticed that people who don't use a VCS often try to make
up for this lack of control by having **multiple copies of the same file**.
This isn't particularly wrong per se, and it initially seems to be a clever workaround.
However, most projects at my university often last between 3 an 15 weeks.
Would you honestly trust yourself to handle multiple versions of various projects
effectively?
Every single one?

This is where a VCS comes in, long gone are the days of needing a folder
containing (I'm using Java as an example language because that's what my
university uses as an introductory language)

```sh
project.java
project1.java
project2.java
```

littered all over your project directory.
Git handles this versioning by storing the changes you've progressively made to
your files via "commits". These are atomic "bundles" of changes you decide to
make permanent on your project. This way, Git slowly builds up a history of all
the changes you've made ever since the first commit.

## Rolling back

The main reason I've seen stated for multiple versions of a file is the desire
for being able to roll back any changes you've made to a file. Git also handles
this very well, you simply have to look at your project history, pick a commit
you want to roll back to, issue the command and **boom**, you've gone back in time!

## Backups / Multiple Copies

Another of the main draws of a VCS is the ability to store remote backups in
case of a catastrophic event.
Several times some of my colleagues have told stories about how a disgruntled
former teammate decided to wipe out a project repository or about how they
unintentionally deleted the project repo from their own machine.

Luckily, a VCS also has that situation in mind.
By allowing for remote repositories, a VCS makes it easy to store remotely all
of your project history and current state.
All you need to do is use a remote server such as [Codeberg](https://codeberg.org)
or [Sourcehut](https://sr.ht).
These will take care of storing your remote repo safely.

Having this system in place, you can back up your commits by simply running
`git push`, and git will handle the job of moving the changes you've made in
your local repo over to your remote repo. If you want to download the changes
you've (or someone else has) made, you simply run `git pull`.

And so, if something happens to my local repo, the remote one will still be
intact. The only commits lost would be the ones I hadn't pushed at the time of loss.
Conversely, if anything catastrophic happened to my remote repo (or repos, Git
allows for multiple remotes and such), then the only commits that I'd lose would
be those that I hadn't pulled from there yet.

**NOTE:** Remember that if you don't regularly push your changes to your remote
repo then there's nothing Git and other VCSs can do to save you.

## Conclusion

Git is capable of many more things than what I mentioned here, but the benefits
I listed are what would've saved many projects ~90% of the time.
Being honest, you're simply depriving yourself from proper project management
if you opt to not use a VCS.
It might not be the easiest tool to learn, but it'll be the one tool you want
most whenever something goes wrong with your project.
If you're a student in anything concerning handling plaintext files such as
code, seriously, **you should use Git!**
