title=Ungewöhnliche Fehler beim Kopieren mittels SSH und SCP gelöst - Mac/Zsh
date=2023-07-28
type=post
tags=console, ssh, scp, zsh, mac
status=published
~~~~~~

Für das Synchronisieren von Daten benutze ich sehr gern die Kopplung aus SSH/SCP via Konsolen und habe bei diversen Projekten dafür simple Skripte, die alle die gleiche Form haben:

```bash
➜  homepage-woo git:(master) cat copyUpstream.sh
#!/bin/bash
echo "Will upload stuff from current directory to hoster ..... "
scp -r ./* myremoteuser@myfantasticISP.com:~/htdocs/woo/public/
```

Interessanterweise habe ich nun in bestimmten Konsolen ([zsh](https://github.com/ohmyzsh/ohmyzsh)) Fehler, die ich in der Bash niemals sah:

```zsh
➜  homepage-woo git:(master) ./copyUpstream.sh
Will upload stuff from current directory to hoster .....
(myremoteuser@myfantasticISP.com) Password for myremoteuser@myfantasticISP.com:
subsystem request failed on channel 0
scp: Connection closed
```

Die Lösung des Problems ist einfach und simpel:
```bash
➜  homepage-woo git:(master) cat copyUpstream.sh
#!/bin/bash
echo "Will upload stuff from current directory to hoster ..... "
scp -r -O ./* myremoteuser@myfantasticISP.com:~/htdocs/woo/public/
```
