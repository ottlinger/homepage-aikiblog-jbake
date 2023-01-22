title=Schnittstellen – und daran kann man sich festhalten
date=2010-04-07
type=post
tags=Java, interfaces, API changes
status=published
~~~~~~

Tja – die alte Softwareentwicklermär: Schnittstellen sind fix und daher ist es unerheblich, welche konkrete Softwareversion am Start ist. Weit gefehlt!

Im JDK – trotz stabiler Schnittstelle der 6er Version – scheint es zwischen den Minoversionen einen kleinen, aber entscheidenden Unterschied zu geben. Dieser wurde kürzlich durch Sportsfreund [Hudson](https://projects.eclipse.org/projects/technology.hudson) aufgedeckt.

Lokal liefen alle Tests durch, aber auf dem Hudson meinte der [URLEncoder](https://docs.oracle.com/javase/6/docs/api/java/net/URLEncoder.html), dass er einige Sachen nicht rausfiltern will – hauptsächlich das Paragraphenzeichen. Naja – aber wie findet man nun raus welche JDK-Version dort am Start ist?

Eine übliche Suchmaschinenanfrage bringt nur diverse Verweise auf – ruf doch bitte *java --version* auf. Aber das hilft ja nicht im Programm. Dann meinte ein Kollege, dass es da so eine Systemproperty gäbe.

Aber wie heißt selbige – lange Suche brauchte diesen Artikel zutage.

Und so sieht das ganze für die Hosentasche aus:

```java
String javaVersion = System.getProperty("java.version");
```

Happy bug hunting!
