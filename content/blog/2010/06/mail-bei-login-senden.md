title=Mail bei Login versenden
date=2010-06-05
type=post
tags=linux, mail on login
status=published
~~~~~~

Und wieder im LinuxMagazin gefunden - automatisch eine Mail versenden, wenn sich jemand am System anmeldet.

Dazu einfach in der systemweiten Bashrc folgendes Stücken hinzufügen (Ubuntu: */etc/bash.bashrc*):

```bash
echo 'Login on' `hostname` `date` `who` | \
mail -s "Login on `hostname` `who | \
awk '{print $5}'`" zieladresse@yourmailhost.com
```

Nett und schnell, wenn das System Mails verschicken kann :-)
