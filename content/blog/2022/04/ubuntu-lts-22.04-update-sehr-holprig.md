title=Ubuntu 22.04 LTS Update von 20.04 – holprig wie schon lange nicht mehr
date=2022-04-24
type=post
tags=Ubuntu LTS, 22.04, 20.04 update problems
status=published
~~~~~~

So, es war wieder soweit und das Update von [Ubuntu 20.04 LTS](https://ubuntu.com/) auf 22.04 stand an.

Mutig startete ich das Update weil die ReleaseNotes nicht wirklich Probleme vorhergesagt haben. Die Hauptänderung, dass Firefox nun als SNAP läuft, machte – wie man während des Updates schon sah – keine Probleme.

Bis auf einen komischen *firefox.tmp*-Ordner unter *~/Downloads* läuft alles.

### Aber während des Updates gab es unerwartete Probleme:

Die Installation brach ab, weil usrmerge nicht durchlaufen konnte- nach dem ersten Schreck erstellte ich [#1969861](https://bugs.launchpad.net/ubuntu/+source/usrmerge/+bug/1969861) und konnte die Installation gemäß [Hinweisen](https://ubuntuhandbook.org/index.php/2022/04/upgrade-ubuntu-20-04-to-ubuntu-22-04-lts/) fortsetzen.

Ein kleiner Hickup beim Start von LibreOffice ließ sich durch Nachinstallieren von *ure-java* gemäß [Tipp](https://comeandtechit.wordpress.com/2021/10/27/warning-failed-to-launch-javaldx-java-may-not-function-correctly/) lösen. Ansonsten dann die ganzen Fremdrepos wieder aktivieren, falls dort auch für das neue *jammy* eine Ordnerstruktur angelegt ist.

Aber nervig ist, dass [NordVPN](https://nordvpn.com/) nicht mehr startet. Leider funktioniert der Support nicht und es findet sich nie ein Mitarbeiter als Chatpartner zur Unterstützung (man muss sich per Mail melden und dann wird mit einem Ticketingsystem reagiert, aber das findet man nicht auf der Webseite). Neuinstallation hat leider nichts gebracht.

Daher nun leider ungeschützt unterwegs – sonst fällt auf, dass die UI wieder noch Mac-ähnlicher geworden ist und diverse Menüstrukturen verändert wurden.

Aber sonst tut die Kiste erstmal 🙂 **PUH**
