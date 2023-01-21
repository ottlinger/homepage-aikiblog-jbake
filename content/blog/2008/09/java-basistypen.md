title=Basisdatentypen einfacher verwenden
date=2008-09-26
type=post
tags=java, basetypes
status=published
~~~~~~

Da ich so ein Siebhirn habe, hier nochmals der Hinweis:

Bei der Verwendung von Basisdatentypen nicht ständig den Konstruktor verwenden, um beispielsweise in Tests Dummywerte zu übergeben.

Nicht:
```java
new Long(4711L);
```
Sondern:
```java
Long.valueOf(4711L);
```
