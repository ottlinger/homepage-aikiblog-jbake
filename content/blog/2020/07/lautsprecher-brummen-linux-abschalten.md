title=Pulseaudio: Lautsprecherbrummen abschalten - Linux - Energieeinstellung
date=2020-07-31
type=post
tags=pulseaudio, brummen, loudspeaker
status=published
~~~~~~

Wer kennt es nicht: häufiger knackt es oder die Lautsprecher beginnen zu brummen. Gerade, wenn man zwischen Anwendungen umschaltet, die Audio abspielen oder audiotechnisch pausieren.

Dazu muss eine Energieeinstellung des [PulseAudio](https://wiki.ubuntu.com/PulseAudio)-Dienstes angepasst werden:

```bash
cat /etc/pulse/default.pa | grep susp

dann auskommentieren:
load-module module-suspend-on-idle
```

und Pulseaudio neu starten:

```bash
systemctl restart --user pulseaudio
```

Quelle: https://www.heise.de/ratgeber/Boxen-brummen-unter-Linux-4857009.html
