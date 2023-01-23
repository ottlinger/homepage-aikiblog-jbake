title=Schnelles Teilen von Dateien / lokaler Http-Server mit Python
date=2016-05-13
type=post
tags=Python, lokaler Webserver, Dateien teilen
status=published
~~~~~~

Wenn man das Problem hat, dass Datenmengen geteilt werden sollen, die zu groß für FAT-formatierte USB-Sticks sind, braucht man einen kleinen HttpServer, damit man die Daten ganz einfach via

> http://localhost:8000

herunterladen kann:

```bash
$ python -m SimpleHTTPServer 8000 (Python 2.x)
$ python -m http.server 8000 (Python 3.x)
```

Niemand will derlei Attachementbomben per Mail oder Onlinechat versenden 🙂

Das [Python](https://www.python.org/)-Setup ist in vielen Umgebungen eh schon da.
