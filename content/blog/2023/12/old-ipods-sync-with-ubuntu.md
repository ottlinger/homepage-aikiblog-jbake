title=Alte iPod und iPod nano mit Ubuntu synchronisieren - Erfahrungsbericht
date=2023-12-29
type=post
tags=gtkpod, ipod, ipod nano, ubuntu, rhythmbox
status=published
~~~~~~

Beim Aufräumen in der Zeit zwischen den Jahren, habe ich meine alten Apple-Geräte mit MP3-Daten gefunden:

* [iPod mini](https://de.wikipedia.org/wiki/IPod#Erste_Generation)
* [iPod nano silber 2G](https://de.wikipedia.org/wiki/IPod#Zweite_Generation_3)

## iPod mini

Nachdem ich glücklicherweise noch ein USB-Spezialapple-Kabel gefunden hab, schloß ich das Gerät an meinen Rechner und sah im Gerätebildschirm,
dass das Gerät verbunden sei und nicht getrennt werden soll - dmesg sagte:

```bash
[ 3079.406641] usb 1-5: new high-speed USB device number 8 using xhci_hcd
[ 3079.559656] usb 1-5: New USB device found, idVendor=05ac, idProduct=1205, bcdDevice= 0.01
[ 3079.559669] usb 1-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 3079.559675] usb 1-5: Product: iPod mini
[ 3079.559679] usb 1-5: Manufacturer: Apple
[ 3079.559683] usb 1-5: SerialNumber: 000A2700146EFCA4
[ 3079.560918] usb-storage 1-5:1.0: USB Mass Storage device detected
[ 3079.561392] usb-storage 1-5:1.0: Quirks match for vid 05ac pid 1205: 10
[ 3079.561561] scsi host6: usb-storage 1-5:1.0
[ 3079.594749] usbcore: registered new device driver apple-mfi-fastcharge
[ 3079.645445] usb-storage 1-5:1.0: USB Mass Storage device detected
[ 3079.645935] usb-storage 1-5:1.0: Quirks match for vid 05ac pid 1205: 10
[ 3079.646100] scsi host6: usb-storage 1-5:1.0
[ 3101.477053] apple-mfi-fastcharge 1-5: reset high-speed USB device number 8 using xhci_hcd
```

Im Dateimanager fand sich leider keinerlei Mountendpunkt bzw. das Gerät wurde nicht automatisch angezeigt.

Eine kleine Recherche in den [UbuntuForen](https://ubuntuforums.org/showthread.php?t=103071) brachte:

* ***gtkpod*** - leider kein Gerät gefunden
* ***clementine*** - ebenso
* Anzeige der Geräteinformationen:
```bash
$ sudo apt-get install libimobiledevice-utils

danach:
$ ideviceinfo
findet nichts
```
* ***libgpod*** ist bereits installiert
```bash
$ sudo aptitude install libgpod4
»libgpod4« ist bereits in der angeforderten Version (0.8.3-16build2) installiert.
»libgpod4« ist bereits in der angeforderten Version (0.8.3-16build2) installiert.
Es werden keine Pakete installiert, aktualisiert oder entfernt.
0 Pakete aktualisiert, 0 zusätzlich installiert, 0 werden entfernt und 0 nicht aktualisiert.
0 B an Archiven müssen heruntergeladen werden. Nach dem Entpacken werden 0 B zusätzlich belegt sein.
[ Rootkit Hunter version 1.4.6 ]      
```

Nach ein wenig Grübeln, fiel mein Blick auf den eigenartigen Hold-Knopf an der Geräteoberseite .....
also 2.Versuch:

1. Anstecken und dann Hold hin und her machen -
plötzlich wird er autogemounted, aber ***gtkpod*** stürzt ab beim Zugriff auf den iPod!

### Rhythmbox
In [Rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox) kann man die Musik des Geräts abspielen.
In das Programm bin ich gesprungen, indem ich das automatisch im Dateimanager angezeigte "Rhythmbox"-Symbol angeklickt habe. Dies zeigte sich beim Blättern in der Dateistruktur im gemouteten ipod.

Shakka, so kann man kann hier direkt die Musikstücke einzeln abspielen.

Beim Versuch Dateien von der lokalen Musikbibliothek in den iPod zu kopieren, bleibt die UI hängen mit einem "Transferring tracks to iPod von XYZ", aber nichts passiert.


Das Runterkopieren geht in der Rhythmbox UI (Strg-C auf der Datei im iPod und Strg-V im EditAll-Ordner der Musikansicht).


## iPod nano

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
