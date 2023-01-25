title=DNS Probleme bei Macs beim Wechsel von Netzwerken und Netzwerkadaptern
date=2022-09-19
type=post
tags=mac, dns, trouble
status=published
~~~~~~

Aktuelle Versionen des Mac-Betriebssystems (12.5.x; seit 12.6 etwas weniger) bringt manchmal DNS-Probleme.
Dies betrifft insbesondere Umstände, wenn man

   * häufiger WLANs wechselt,
   * zwischen WLAN und LAN umschaltet und
   * mit verschiedenen VPN-Anbietern zusätzlich noch Netzwerke wechselt.

Dann funktioniert unter Umständen, die Namensauflösung via DNS nicht mehr - Abhilfe verschafft:

```bash
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
```
