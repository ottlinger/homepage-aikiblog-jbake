title=Eclipse geht nicht – GTK-Problem – SuSE-Bug
date=2010-05-07
type=post
tags=Ubuntu, 10.04, volume control
status=published
~~~~~~

Ein viel diskutiertes Problem war, dass nach einem Update Eclipse und andere GTK-basierte Anwendungen nicht mehr funktionierten.

Etwaige Menüs ließen sich nicht mehr mit der Maus bedienen, was bei der Suche nach Updates in Eclipse dadurch auffiel, dass man nicht auf *weiter/continue* klicken konnte. Das Drücken von **ENTER** betätigte die Standardschaltfläche.

Im Großen und ganzen ein riesengroßes Usablityproblem, was sich einfach beheben/vermeiden läßt:

In der *.bashrc* eine Umgebungsvariable:
```bash
export GDK_NATIVE_WINDOWS=true
```
setzen.

Technische Details auch im Eclipse-Bugtracker [Id 291257](https://bugs.eclipse.org/bugs/show_bug.cgi?id=291257).
