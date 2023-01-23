title=PHP7 – WOW-Effekt
date=2016-01-16
type=post
tags=PHP7, wow
status=published
~~~~~~

Da mein Hoster nun final auf [PHP7](https://www.php.net/) umschwenkt, dachte ich mal für einige Domains testweise umzuschalten.

Erste kleinere Warnungen im selbstgeschriebenen PHP-Code fallen auf ... im Netz findet man die gleichen „Problemchen“

```php
Fatal error: 'break' not in the 'loop' or 'switch' context in /your/own/file.php on line 4711
```

aber krass ist der Performancevorteil.

Eine lokal auf PHP5.x laufende Seite – mit nur Datums/Zeitberechnung und sonst statischer Anzeige von Links – benötigt im Schnitt

```php
Rendering took: 0.023338 s
```

auf PHP7 und im Webspace des Hosters läuft das Teil mit

```php
Rendering took: 0.001340 s
```

**Chapeau!**
