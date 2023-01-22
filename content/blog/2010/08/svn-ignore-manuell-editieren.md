title=SVN ignore – manuell editieren
date=2010-08-01
type=post
tags=edit svn ignore
status=published
~~~~~~

Manchmal will man auf der Konsole fix was ändern an den SVN-ignore-Einstellungen oder falls grad kein Eclipse mit installiertem SVN zur Hand ist:
```bash
svn propset svn:ignore 'build' .
```

Fügt das Verzeichnis oder die Datei build dem svn ignore hinzu.

Wenn es für das aktuelle Verzeichnis bereits ein svn ignore gibt, hilft:
```bash
svn propedit svn:ignore .
```

So kann man fix auf der Konsole aufräumen. Wichtig ist, dass man danach mittels svn commit natürlich das betroffene Verzeichnis eincheckt.

Externe Quellen:

   * https://svnbook.red-bean.com/en/1.0/svn-book.html#svn-ch-7-sect-2.3.3
   * http://www.simonwheatley.co.uk/2007/11/09/setting-svnignore-on-the-command-line/
