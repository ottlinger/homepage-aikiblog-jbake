title=Git-Update v2.37: Upstream Branches automatisch erzeugen statt manuelles Setzen
date=2022-07-14
type=post
tags=git, automatically create upstream branch
status=published
~~~~~~

Wenn man lokale Branches aufmacht und entwickelt, wird man beim Aufruf von

```bash
git push
```

stets höflich darauf hingewiesen, dass der zugehörige Upstreambranch noch nicht existiert und mit einem Kommando wie:
```bash
git --set-upstream origin/foo
```
anzulegen ist.

Setzt man nun die Git-Einstellung:
```bash
git config --global --add --bool push.autoSetupRemote true
```
kann man direkt ohne obige Warnung pushen.
