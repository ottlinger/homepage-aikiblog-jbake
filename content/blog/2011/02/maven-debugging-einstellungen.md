title=Maven-Debugging (mvn) – Einstellungen
date=2011-02-03
type=post
tags=Maven, debugging, MAVEN_OPTS
status=published
~~~~~~

Früher hat man ja zum Debugging von Anwendungen folgende Maven-Einstellungen gesetzt:

```bash
export MAVEN_OPTS="-Dfile.encoding=UTF-8 -Xmx384M -Xdebug -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"
```

Mit den neueren Maven-Versionen ([>2.2.1](https://maven.apache.org/download.cgi)) scheint beim Aufruf von Maven selbst ein Fork erstellt zu werden. Dieser sorgt bei obigen Maven-Optionen, zu einem Fehler, der etwas versteckt verrät, dass der Debuggingport 4000 bereits belegt ist.

Daher lieber nur für einzelne Läufe explizit debuggen (oder in der IDE einstellen) – sonst geht auch:

```bash
export MAVEN_OPTS="-Dfile.encoding=UTF-8 -Xmx384M"
```
