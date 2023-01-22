title=Ubuntu 10.04 LTS – wahre Freude
date=2010-04-30
type=post
tags=ubuntu, 10.04 LTS
status=published
~~~~~~

Heute das brandfrische [10.04-Release Lucid Lynx](http://www.ubuntu.com/) ausprobiert und 3 Altsysteme aktualisiert – lief einwandfrei.

Die längste Zeit war das Warten auf die automatische Paketkonfiguration.

Bezüglich meiner enigmail-Installation gab es kleine Hickups, die aber fix gelöst waren (*aptitude install enigmail* nach dem gelösten Bug [527138](https://bugs.launchpad.net/bugs/527138)). Ebenso scheint beim Update der deutschsprachige Thunderbird zu verschwinden, was aber ein fixes *aptitude install thunderbird-locale-de* lösen konnte.
Das Mail Redirect-Plugin gibt es auch in einer [manuellen](https://downloads.mozdev.org/mailredirect/mailredirect-0.7.4-tb3-20091118.xpi) Version für Thunderbird 3.0.4.

Also alles super bisher – sogar meine alte ATI-Grafikkarte, die mit 9.10 keine Desktopeffekte mehr machen wollte, wurde durch eine automatische X-Konfiguration richtig eingestellt. Nicht schlecht – mein 8 Jahre alter Rechner freut sich, dass er den Luchs fahren darf 🙂

Später kam es noch zu Reibereien mit der grafischen Oberfläche, die ein Installieren von *ubuntu-desktop* und Auswahl von *gdm* als Anmeldefenstermanager gelöst wurden.

Unter Gnome gibt es den Lautstärkeregler nicht mehr – scheint beabsichtigt zu sein. Das Reinstallieren des Pakets *indicator-sound* sowie das manuelle Aufrufen von *gnome-volume-control-applet &* behebt auch das Problem.
