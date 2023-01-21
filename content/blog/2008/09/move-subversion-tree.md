title=Subversionbaum umhängen
date=2008-09-17
type=post
tags=svn move, relocate to svn+ssh
status=published
~~~~~~

Wenn man aus Versehen falsch ausgecheckt hat und eigentlich – z.B. beim Bauen mittels Maven2 – einen anderen SVN-Pfad braucht, hilft folgendes Kommando im Wurzelverzeichnis des ausgecheckten Projekts:

```bash
svn switch --relocate
https://repo.foo.de/projects/example-project/trunk
svn+ssh://repo.foo.de/projects/example-project/trunk
```

Zieht den alten über https ausgecheckten Projektbaum nach svn+ssh um!
