title=Hibernate SQL Logging einstellen
date=2008-10-24
type=post
tags=Java, Hibernate, Log4j, configuration
status=published
~~~~~~

Schaltet man das generelle Abfrage-Loggen von Hibernate ein, wird man bei einer mittelgroßen Anwendung ja förmlich von Logs erschlagen.

Auf folgende Art und Weise schaltet man den Logger programmatisch ein und wieder aus. Die Ausgaben erscheinen auf der Konsole, was für Debugging und Testläufe in der IDE angenehm ist:

   * Im Test Hibernate SQl Logging anschalten:
```java
Logger.getLogger("org.hibernate.SQL").setLevel(Level.DEBUG);
```    
   * normalen Testcode, dessen SQL man sehen möchte ausführen
   * Logging wieder ausschalten:
```java
Logger.getLogger("org.hibernate.SQL").setLevel(Level.WARN);
```
