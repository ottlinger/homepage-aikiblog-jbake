title=Maven Versionen in pom.xml verändern
date=2013-09-06
type=post
tags=Maven, change version
status=published
~~~~~~

Wer bisher manuell durch alle poms eines größeren Projekts gegangen ist, den könnte folgender Aufruf interessieren:

```bash
mvn versions:set -DnewVersion=1.2.3-SNAPSHOT -DgenerateBackupPoms=false
```

Somit werden einfach die Versionen in allen poms umgesetzt und man muss dann nur noch einchecken.
