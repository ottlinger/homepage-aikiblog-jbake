title=Ubuntu Apache Webserver im lokalen Netzwerk verfügbar machen
date=2020-10-12
type=post
tags=Ubuntu, Apache Webserver, Firewalleinstellung
status=published
~~~~~~

Seit die [Ubuntu](https://www.ubuntu.com) Firewall ([ufw](https://launchpad.net/ufw)) standardmäßig an ist, fiel auf, dass der Webserver im lokalen Netzwerk nicht mehr aufrufbar ist, sondern nur via localhost seine Schätze preisgibt.

Der Versuch in der Konfiguration des DocumentRoot Änderungen zu machen fruchtete auch nicht.

Es liegt einzig und allein an der Firewall, die man wie folgt öffnen kann, um die Einstellungen anzupassen:

```bash
$ sudo ufw app list

Verfügbare Anwendungen:
  Apache
  Apache Full
  Apache Secure
  CUPS
  OpenSSH
  Postfix
  Postfix SMTPS
  Postfix Submission


$ sudo ufw allow 'Apache'

Regel hinzugefügt
Regel hinzugefügt (v6)


$ sudo ufw status
Status: Aktiv

Zu                         Aktion      Von
--                         ------      ---
22/tcp                     ALLOW       Anywhere
Apache                     ALLOW       Anywhere
22/tcp (v6)                ALLOW       Anywhere (v6)
Apache (v6)                ALLOW       Anywhere (v6)
```
