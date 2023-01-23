title=Microsoft Teams – nervige Probleme durch Cache löschen lösen
date=2020-08-12
type=post
tags=Microsoft Teams, Cache, Mac, lokal
status=published
~~~~~~

In der aktuellen Zeit ist man ja gezwungen verstärkt mit Remote Collaboration Tools zu arbeiten. Die Klickibuntivariante glänzt durch die bekannten Probleme beim Synchronisieren zwischen Server- und lokalen Resourcen.

Leider funktioniert das selten und man muss auf der Konsole öfters die Caches weghauen:

```bash
// Anwendungen beenden
$ rm -rf ~/Library/Caches/com.microsoft.*
$ sudo rm /Library/Preferences/com.microsoft.teams.plist
```

Daneben muss in der Anwendung auch regelmäßig (z.B. bei Veränderungen an Mailverteilern) der Cache gelöscht werden. Dazu:

   * rechte Maustaste auf dem Posteingangsordner
   * Eigenschaften -> Cache löschen

Nach manchen Updates des Outlook geht das Cache-Aktualisieren nicht mehr.

Happy hacking 🙂
