title=Netzwerkfähigkeiten und Eckdaten der Netzwerkkarte
date=2013-09-01
type=post
tags=NIC capability, Netzwerkfähigkeiten, ethtool
status=published
~~~~~~

Wenn man vor einer Entscheidung steht auf Gigabit-LAN umzusteigen, will man eigentlich wissen, welche Netzwerkkarte verbaut ist und ob sie das überhaupt kann. Zum Glück gibt’s da was auf der [Konsole](https://wiki.ubuntuusers.de/ethtool/):

```bash
user@box:~$ sudo ethtool eth0
[sudo] password for user:
Settings for eth0:
Supported ports: [ TP MII ]
Supported link modes: 10baseT/Half 10baseT/Full
100baseT/Half 100baseT/Full
1000baseT/Half 1000baseT/Full
Supported pause frame use: No
Supports auto-negotiation: Yes
Advertised link modes: 10baseT/Half 10baseT/Full
100baseT/Half 100baseT/Full
1000baseT/Half 1000baseT/Full
Advertised pause frame use: Symmetric Receive-only
Advertised auto-negotiation: Yes
Link partner advertised link modes: 10baseT/Half 10baseT/Full
100baseT/Half 100baseT/Full
Link partner advertised pause frame use: Symmetric
Link partner advertised auto-negotiation: Yes
Speed: 100Mb/s
Duplex: Full
Port: MII
PHYAD: 0
Transceiver: internal
Auto-negotiation: on
Supports Wake-on: pumbg
Wake-on: g
Current message level: 0x00000033 (51)
drv probe ifdown ifup
Link detected: yes
```

Einfach via

```bash
sudo aptitude get install ethtool
```

installiert und schon passt es.
