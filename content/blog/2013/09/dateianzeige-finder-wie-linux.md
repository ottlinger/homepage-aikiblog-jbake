title=Dateianzeige im Finder wie normal unter Linux
date=2013-09-06
type=post
tags=Mac, Finder, Show all files
status=published
~~~~~~

Wer erstmals an einem Rechner des Apfelherstellers arbeitet, findet es sicher auch verwirrend, dass man keine Einstellungsdateien sieht bzw. auch die Dateiendungen nicht. Für die Konfigurationsdateien hilft folgender Aufruf in einem Terminal:

```bash
user@horst:~/ > defaults write com.apple.Finder AppleShowAllFiles TRUE
user@horst:~/ > killall Finder
```
