title=Git: lokalen Stand zurücksetzen auf frisch ausgecheckten Zustand
date=2017-06-05
type=post
tags=Git, reset, lokal
status=published
~~~~~~

Manchmal hat man ein lokal so fortgeschrittenes Projekt, dass man einfach mal auf den Stand zurückgehen will, den man hätte, wenn frisch ausgecheckt würde.
Das ist inbesondere sinnvoll, wenn man lokal viele Dateien – z.B. generierte Sachen oder Projekteinstellungen von IDEs – hat, die unter Umständen stören.

Ein:

```bash
$ git clean -fxd
```

putzt alles weg im Fall von [Git](https://git-scm.com/).
