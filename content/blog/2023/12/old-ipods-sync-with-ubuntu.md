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

#### Problem: Upload auf das Gerät geht nicht
**ABER** Beim Versuch Dateien von der lokalen Musikbibliothek in den iPod zu kopieren, bleibt die UI hängen mit einem "Transferring tracks to iPod von XYZ", aber nichts passiert.

#### Download vom Gerät in die lokale Musikbibliothek

Das Runterkopieren von Musikdateien vom Gerät geht in der Rhythmbox UI.
Dazu einfach die gewünschten Dateien mittels Strg-C auf der Datei im iPod kopieren und Strg-V im EditAll-Ordner der Musikansicht zum Einfügen.
So liegt die Datei dann unter
```bash
user@ubuntu:~/Music$
```
und die Metadaten in der Audiodatei führen dazu, dass eine Orderhierarchie angelegt wird:

```bash
./Usher
./Usher/Confessions
./Usher/Confessions/02 - Yeah!.mp3
```

## iPod nano

Interessanterweise sieht die Meldung etwas anders aus, wenn man das Gerät an den Rechner anstöpselt:

```bash
[ 9912.364673] usb 1-5: USB disconnect, device number 10
[10170.996404] usb 1-5: new high-speed USB device number 11 using xhci_hcd
[10171.145734] usb 1-5: New USB device found, idVendor=05ac, idProduct=1260, bcdDevice= 0.01
[10171.145746] usb 1-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[10171.145752] usb 1-5: Product: iPod
[10171.145756] usb 1-5: Manufacturer: Apple
[10171.145760] usb 1-5: SerialNumber: 000A270018CA81CF
[10171.147034] usb-storage 1-5:1.0: USB Mass Storage device detected
[10171.147745] scsi host6: usb-storage 1-5:1.0
[10172.179351] scsi 6:0:0:0: Direct-Access     Apple    iPod             1.62 PQ: 0 ANSI: 0
[10172.180011] sd 6:0:0:0: Attached scsi generic sg4 type 0
[10172.219418] sd 6:0:0:0: [sdd] 991232 2048-byte logical blocks: (2.03 GB/1.89 GiB)
[10172.220341] sd 6:0:0:0: [sdd] Write Protect is off
[10172.220436] sd 6:0:0:0: [sdd] Mode Sense: 68 00 00 08
[10172.221431] sd 6:0:0:0: [sdd] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
[10172.228544]  sdd: sdd1 sdd2
[10172.233834] sd 6:0:0:0: [sdd] Attached SCSI removable disk
[10173.604122] audit: type=1107 audit(1703870937.443:319): pid=1427 uid=103 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_signal"  bus="system" path="/org/freedesktop/login1" interface="org.freedesktop.DBus.Properties" member="PropertiesChanged" name=":1.5" mask="receive" pid=203835 label="snap.firefox.firefox" peer_pid=1468 peer_label="unconfined"
                exe="/usr/bin/dbus-daemon" sauid=103 hostname=? addr=? terminal=?'
[10173.619443] audit: type=1107 audit(1703870937.459:320): pid=1427 uid=103 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_signal"  bus="system" path="/org/freedesktop/login1" interface="org.freedesktop.DBus.Properties" member="PropertiesChanged" name=":1.5" mask="receive" pid=203835 label="snap.firefox.firefox" peer_pid=1468 peer_label="unconfined"
                exe="/usr/bin/dbus-daemon" sauid=103 hostname=? addr=? terminal=?'
[10179.031152] apple-mfi-fastcharge 1-5: USB disconnect, device number 11
[10179.052571] audit: type=1107 audit(1703870942.895:321): pid=1427 uid=103 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_signal"  bus="system" path="/org/freedesktop/login1" interface="org.freedesktop.DBus.Properties" member="PropertiesChanged" name=":1.5" mask="receive" pid=203835 label="snap.firefox.firefox" peer_pid=1468 peer_label="unconfined"
                exe="/usr/bin/dbus-daemon" sauid=103 hostname=? addr=? terminal=?'
[10179.065932] audit: type=1107 audit(1703870942.907:322): pid=1427 uid=103 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_signal"  bus="system" path="/org/freedesktop/login1" interface="org.freedesktop.DBus.Properties" member="PropertiesChanged" name=":1.5" mask="receive" pid=203835 label="snap.firefox.firefox" peer_pid=1468 peer_label="unconfined"
                exe="/usr/bin/dbus-daemon" sauid=103 hostname=? addr=? terminal=?'
[10180.470048] FAT-fs (sdd2): unable to read boot sector to mark fs as dirty
```

Interessanterweise wird das Gerät erkannt, wenn man den Hold-Knopf an der Geräteoberseite so einstellt bzw. im Zustand hin- und herwechselt bei angeschlossenem Gerät,
dass man nichts rotes sieht. Es wird plötzlich als Gerät im Dateimanager gemounted, nachdem man den Hold-Schalter hin und her bewegt!
Zusätzlich kommt der Audioton, der immer beim Einstecken eines USB-Geräts ertönt.

Ein [Reparieren der Dateisysteme](https://devicetests.com/repair-fat32-file-system-ubuntu) ist glücklicherweise nicht nötig:

```bash
$ sudo dosfsck -w -r -l -a -v -t /dev/sdd2
bzw.
$ sudo fsck.vfat -a /dev/sdd2
```


### GtkPod

Der Aufruf von [gtkpod](https://github.com/trinitonesounds/gtkpod) klappt mit diesem Gerät und man erkennt oben in der Menüleiste ein Player-Symbol.
Daneben fragt die UI ab, um welche Gerätegeneration es sich handelt und bietet an, ein farblich passendes Icon auszuwählen.

Als dies geschehen ist, kommen 2 Warnungen, dass irgendwelche Prüfummen nicht stimmen. Der Player hat ja ein Hardwareproblem und vielleicht kam es dazu zu gewissen Synchronisationsunterschieden ..... aber die Hardware tut.

### Rhythmbox

Sollte so wie oben beschrieben funktionieren!

/happy hacking/
