title=Konsolenmagie - Dateien finden, Dublikate entfernen und Inhalte zusammenführen
date=2023-02-12
type=post
tags=console, find, grep, sort, cat, dedup
status=published
~~~~~~

Bedingt durch einen technischen Defekt habe ich unversionierte Textdateien mit einer uralten Version überschrieben. Als vernünftiger Informatiker habe ich diverse Datensicherungen.
Das Problem ist nur, dass es nun verschiedene Dateien mit gleichem Inhalt zu verschiedenen Zeitpunkten gibt. Stellt Euch folgendes Szenario vor:

```bash
$ find . | grep "rechnungen.txt"
20200101/Documents/data/rechnungen.txt
20200715/Documents/older_data/rechnungen.txt
...
20221231/Documents/2023_data/rechnungen.txt
```

Jetzt will ich sämtliche Daten zusammenführen:
```bash
find . | grep "rechnungen.txt" | xargs | cat >> ~/Downloads/superrechnungen.txt
```

und habe nun alle Daten unsortiert in einer Datei.

```bash
cat superrechnungen.txt | sort >> sortedsuperrechnungen.txt
```

Jetzt sind alle Einträge alphabetisch sortiert, aber noch voller Dubletten.

```bash
sort sortedsuperrechnungen.txt
sort -u sortedsuperrechnungen.txt > reducedsuperrechnungen.txt
```

Tada! Jetzt kann ich die zusammengeführte Datei mittels [diff](https://manpages.ubuntu.com/manpages/trusty/man1/diff.1posix.html) gegen die aktuelle Version der rechnungen.txt vergleichen und sehe, welche Daten mir fehlen oder in der Zwischenzeit aktualisiert wurden.
Super, wie einfach das mit den traditionellen Boardmitteln aus [find](https://help.ubuntu.com/community/find), [grep](https://help.ubuntu.com/community/grep), [cat](https://wiki.ubuntuusers.de/cat/) und [sort](https://wiki.ubuntuusers.de/sort/) zu machen ist.
Was habe ich sonst noch gelernt aus dem Vorfall: rechnungen.txt ist nun in einem nicht öffentlichen Repository versioniert.
