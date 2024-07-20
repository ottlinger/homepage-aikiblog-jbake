title=Vienna.app - RSS-Reader mit eigenartigen Zählfehlern
date=2024-07-20
type=post
tags=rss, foss, count errors in feeds, apple, vienna.app
status=published
~~~~~~

Seit Ewigkeiten liebe ich den [RSS](https://www.britannica.com/technology/RSS)-Feed-Reader [Vienna.app](https://www.vienna-rss.com/) auf dem Mac. Man kann sehr einfach diverse Feeds integrieren, schnell lesen, gelesen markieren oder direkt anspringen, wenn einem die Vorschau nicht ausreicht.

Daneben kann man seine Feeds vernünftig exportieren und so im Fall neuer Rechner schnell wieder an den Start kommen.

## Nerviges Verhalten seit einigen Versionen

Dennoch ist es so, dass es seit einigen Versionen (auch in v3.9.1, die gerade aktuell ist) die Feeds manchmal Einträge zeigen oder fett markiert sind, obwohl keine Einträge vorhanden sind.

Manchmal ist es auch so, dass die gemeldete Anzahl der Einträge nicht stimmt: so ist der Feed beispielsweise fettgedruckt markiert und zeigt eine 17 an. Klickt man auf den Feed, bleibt die 17 manchmal stehen, es werden aber keine Feed-Einträge gezeigt oder die 17 bleibt bestehen und es sind aber 2 ungelesene und 3 als gelesen markierte Einträge vorhanden.

Kurzum - die Zählung ist nicht immer korrekt. In früheren Versionen half es:

* das Programm einfach neu zu starten und beim Beenden den Papierkorb zu leeren
* alle Feeds kurz durchzuklicken (mittels Hoch/Runter-Pfeil auf der Tastatur)
* alle Feeds zu aktualisieren

Weitere Disskussionen gern am Bug [#1549](https://github.com/ViennaRSS/vienna-rss/issues/1549) verfolgen #openSourceRocks
