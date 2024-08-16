title=MPlayer - could not connect to socket, No such file or directory loswerden
date=2024-08-16
type=post
tags=foss, mplayer, warning
status=published
~~~~~~

Als Freund der [MPlayer](http://www.mplayerhq.hu) Video- und Audioabspielsoftware hat es mich genervt, wenn folgende Warnungen beim Start der Anwendung kamen:

```bash
MPlayer 1.4 (Debian), built with gcc-11 (C) 2000-2019 MPlayer Team
do_connect: could not connect to socket
connect: No such file or directory
Failed to open LIRC support. You will not be able to use your remote control.
```

Laut dem [Forumsthread]() ist die Lösung trivial:
```bash
vim ~/.mplayer/config
lirc=no
```

Leider ist das Problem immer noch da, dass in der Konsole kein Audio abgespielt wird, aber eine Suchmaschinensuche nach dem Fehlerbild bringt nur Leute, denen das restricted-Paket fehlte, um kopiergeschützte Inhalte wiederzugeben, aber das ist ja nicht mein Problem: bei mir kommt einfach kein Audio, wenn ich via Terminal irgendwelche Audio/Videoapps starte.
