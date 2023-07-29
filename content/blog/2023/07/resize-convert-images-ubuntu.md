title=Bildbearbeitung im Dateimanager - nautilus: Verkleinern, Drehen von Bildern
date=2023-07-23
type=post
tags=nautilus, convert, pics
status=published
~~~~~~

Wer kennt das nicht? Bilder von der Kamera runtergeladen (z.B. für Kleinanzeigen), aber dann darf man nur 12 MB hochladen und will gern alle Dateien schnell verkleinern.
Für die Konsole könnte man sich nun schnell ein Skripte basteln, dass mittels [ImageMagick convert](https://imagemagick.org/script/convert.php) die Sachen umwandelt, aber wenn man das nur unregelmäßig macht, ist die Integration in den Dateimanager (nautilus) ganz komfortabel.

## Installation und Nautilus-Neustart

```bash
sudo apt install nautilus-image-converter
pkill nautilus oder nautilus -q
```

Jetzt hat man in einem beliebigen Verzeichnis neue Kontextmenüeinträge:

* Resize image
* Rotate image

Auf diese Art und Weise kann man die Dateien schnell in Unterordner kopieren, alle markieren und dann beispielsweise auf 90% Größe skalieren.
Einfach wunderbar!

Quelle: [AskUbuntu](https://askubuntu.com/questions/1164/how-to-easily-resize-images-via-command-line)
