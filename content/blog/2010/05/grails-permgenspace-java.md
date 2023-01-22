title=Grails – PermGenSpace-Probleme JAVA_OPTS
date=2010-05-24
type=post
tags=permgen, heap space, java
status=published
~~~~~~

Wenn man mit Grails entwickelt, geht öfters mal der PermGenSpace aus – dazu hilft es einfach mehr Speicher zur Verfügung zu stellen und die Java-Einstellungen zu verändern:

```bash
export JAVA_OPTS="-Xmx512m -XX:MaxPermSize=256m"
```
Und dann freut sich die Maschine auch wieder etwas 🙂
