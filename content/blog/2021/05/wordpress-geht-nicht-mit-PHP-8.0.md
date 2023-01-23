title=WordPress-Update hängt mit PHP 8.0
date=2021-05-14
type=post
tags=Wordpress, Goneo, PHP8, Updateprobleme
status=published
~~~~~~

Wie ich heute wieder lernen musste, bestimmt die PHP-Version und deren Konfiguration des Hosters, ob die in WordPress eingebaute Updatefunktion funktioniert.

Inhaltlich war es so, dass mit PHP8.0 am Start (mit [Goneo](https://www.goneo.de)-Modulkonfiguration) keinerlei Update mehr eingespielt werden konnte. Die UI ist eingefroren und blieb beim Download stehen. Dies betraf:

   * Plugin-Updates
   * Themes-Updates
   * WP-Core-Updates.

Nach einigem Austausch mit dem Kundensupport kam der Hinweis doch auf PHP7.4 zurückzuschalten. Nachdem ich das im Kundencenter gemacht hatte und die obligatorischen 15 Minuten wartete, gingen die Updates wieder.

Im laufenden Betrieb merkte man keinen Unterschied, aber beim Update – komisch.
