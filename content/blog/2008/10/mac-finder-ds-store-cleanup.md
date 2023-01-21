title=.DS_Store clean up – Apple Macintosh Dateien aufräumen
date=2008-10-25
type=post
tags=mac, finder, .DS_Store, cleanup
status=published
~~~~~~

Auf alten Backupplatten fand ich dutzende Macintosh-Dateien – nun findet man dort in jedem Verzeichnis eine .DS_Store-Datei des Finders, die man natürlich in einer normalen Linuxumgebung nicht braucht.

Das Löschen geht auf Konsole ganz einfach:

```bash
find . -name .DS_Store | xargs rm -i
```

So werden die Dateien gleich gelöscht und man muss nicht umständlich suchen ...
