title=Laufen eines RAID resync steuern
date=2024-10-12
type=post
tags=mdadm, linux, resync, raid
status=published
~~~~~~

Wer kennt das nicht .... beim Betrieb eines RAID (=mehrere physische Festplatten werden zu einer logischen Partition zusammengeschaltet, RAID1) beginnt der automatisch gestartete Wartungssync der Festplatten genau dann, wenn man nur mal kurz was gucken möchte. In meinem Fall ist es leider dann so, dass der Rechner I/O-technisch extrem verlangsamt reagiert. Dumm gelaufen!

Nun kann man den Rechner herunterfahren - auch im laufenden Resync; es muss nur das root-Passwort eingegeben werden und das Herunterfahren wartet 90 Sekunden, bevor das Synchronisieren gestoppt und der Rechner ausgeschaltet wird.

Will man nun das Resync starten, weil der Rechnung ungenutzt da steht oder es einfach besser passt, geht das so mit Eingabe des Passworts:

```bash
$ systemctl start mdcheck_start
```

Die Abfrage des Synchronisationsstatus bzw. gesamten RAID-Zustands, geht wie immer so:

```bash
$ cat /proc/mdstat

Personalities : [raid1] [linear] [multipath] [raid0] [raid6] [raid5] [raid4] [raid10]
md0 : active raid1 sdb1[0] sdc1[1]
      45387843248 blocks super 1.2 [2/2] [UU]
      bitmap: 3/30 pages [12KB], 65536KB chunk

unused devices: <none>
```

Quelle: [Baeldung](https://www.baeldung.com/linux/raid-resync-reasons-control)
