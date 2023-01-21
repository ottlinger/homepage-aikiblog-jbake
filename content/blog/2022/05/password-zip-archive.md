title=Erstellung eines passwortgeschützten ZIP-Archivs
date=2022-05-22
type=post
tags=blog,password,zip
status=published
~~~~~~

Insbesondere bei Behörden muss man ja manchmal Dateien als Anhang versenden oder Listen von Anhängen - damit nicht alle Daten plaintext durchgesehen werden, bietet sich der naive ZIP-Passwortschutz an, den man wie folgt nutzt:

```bash
$ mkdir foo
$ cp *.pdf foo
$ zip -re foo.zip foo
Enter password: 
Verify password: 
```

Dann kann man die Datei einfach anhängen und das Passwort direkt als Text mit in die Nachricht schreiben - so verhindert man, dass Firewalls und andere maschinelle Inhaltsdurchsucher die angehängten PDF-Dateien indizieren.

Ja, security by obscurity :)
