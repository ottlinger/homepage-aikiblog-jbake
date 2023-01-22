title=ungewöhnlicher Mac-Ärger – Rechner startet nicht, Festplatte defekt, Klickibuntu-Tool hilft nicht
date=2011-08-17
type=post
tags=Mac, HDD, error
status=published
~~~~~~

Kaum ist die Elternzeit vorüber, ruft die Arbeit wieder ... und ungewöhnliche Probleme begrüßten mich gestern morgen.

Mein iMac startete nicht mehr – kurz kam ein Fortschrittsbalken, der Dateisysteme geprüft hat. Dann ging die Dose aus 🙁

Die Admins hatten wie immer keine richtige Ahnung – also starten von der Installations-DVD (*‚C‘* während des Bootens halten) – Festplattendienstprogramm aufrufen und Festplatte überprüfen und reparieren.

```bash
Fehlermeldung: wrong node count
```

Das grafische Tool stellte die Arbeit ein und empfahl die bestehenden Daten zu sichern, die Platte zu formatieren und dann die Daten wieder zurückzuspielen – glücklicherweise kann das alles das Disktool der Installations-DVD.

Also:

   * Von der gesamten Platte ein Backup ziehen (komprimiertes Image auf externe via USB angeschlossene Festplatte) – hat bei 213 GB Daten ca. 4 Stunden gedauert. Zum Glück gab es einen USB-SATA-Adapter, in den man eine rumliegende Festplatte einfach einstecken konnte.
   * Dann das Backup validiert – dauerte ca. 3 Stunden.
   * Am nächsten Morgen dann das Backup zurückgespielt in der Menüoption Wiederherstellen. Dabei als Quelle das gestrige Image genommen und als Ziel die Festplatte.
   * Wieder 4 Stunden auf das Zurückspielen gewartet.
   * Hoffnungsvoll neu gestartet ...

Aber: gleiches Problem!

Dann ein wenig recherchiert und die folgenden 2 äußerst hilfreichen Artikel gefunden – was für ein Glück, dass unter dem Mac ein BSD liegt und daher normale Funktionen wie eine Konsole gehen:

   * [Mac OS X: How to start up in single-user or verbose mode](https://support.apple.com/kb/ht1492)
   * [Resolve startup issues and perform disk maintenance with Disk Utility and fsck](https://support.apple.com/kb/ts1417)

Also einfach: ⌘Apfel-S nach dem Versuch mit ⌘Apfel-V machen und schon geht’s los.

   * Beachten, dass es die englische Tastatur ist: ein Unterstrich *_* befindet sich auf dem *ß/?*
```bash
fsck_hfs -dr /dev/rdisk0s2
```
   * Das Dateisystem wird geprüft und der interne Index neu aufgebaut.
   * Wenn alles erfolgreich repariert wurde: *reboot*

Dann hatte der Spuk ein Ende und der Rechner kam wieder hoch!
Also gleich noch ein wenig ausgemistet, damit die Updates beim nächsten Mal nicht so groß sind und geprüft, dass Time Machine auch brav Updates einspielt – es gibt auch die Möglichkeit den Schneeleoparden mit einem Time Machine-Backup wiederherzustellen.
Hoffentlich war’s das!
