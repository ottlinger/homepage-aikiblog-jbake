title=Probleme beim NordVPN Update - mal wieder
date=2026-09-11
type=post
tags=vpn, security, update errors, problems
status=published
~~~~~~

Seit einiger Zeit benutze ich [NordVPN](https://nordvpn.com), um der medialen Zensur zu entgehen und außerhalb Deutschlands über Deutschland zu lesen.

In diesem Zug bin ich auf die [SNAP](https://snapcraft.io/)-Variante der Anwendung umgestiegen. Leider gibt es auch dort diverse Probleme beim Update, die ich in diesem Post zusammenstellen möchte.


## Update durch erneute Installation

Da die Anwendung, wenn sie läuft, es nicht schafft, sich selbst zu aktualisieren, muss sie hart deinstalliert und erneut installiert werden. Ja, das nervt, aber sieht aber theorethisch ganz einfach aus:

```bash
$ sudo snap remove nordvpn
Snap "nordvpn" (66) vom System entfernen
nordvpn removed (snap data snapshot saved)

$ sudo snap install nordvpn
nordvpn 5.1.0 von NordVPN✓ installed

$ sudo snap connect nordvpn:system-observe
sudo snap connect nordvpn:hardware-observe
sudo snap connect nordvpn:network-control
sudo snap connect nordvpn:network-observe
sudo snap connect nordvpn:firewall-control
sudo snap connect nordvpn:login-session-observe
```

Nachteil dieses Weges ist, dass man sich erneut neu einloggen muss und eventuelle Einstellungen manuell nachzuziehen sind.

## App kann sich selbst nicht aktualisieren

In der Oberfläche erhält man einen Hinweis, dass ein Update zur Verfügung steht oder der Hinweis erscheint in der Konsole,
wenn man eine Verbindung aufbaut.

Leider ist es auch ein Irrglaube, dass die App das selber hinkriegt, daher muss man manuell nachhelfen:

```bash
sudo killall nordvpn
sudo killall nordvpnd
sudo snap refresh
```

Manche Programmversionen haben es dann geschafft mit obigen Schritten ein Update einzuspielen, aber manchmal auch nicht.

## App aktualisieren in der Konsole

Seit August 2026 ging es relativ stabil mit folgendem Ablauf:

```bash
$ alias n
alias n='nordvpn'

$ n status
A new version of NordVPN is available!
Please update the app.
Status: Disconnected

$ sudo killall nordvpnd

Jetzt kurz abwarten, weil das Update installiert wurde.

$ n status
Permission needed. To ensure NordVPN runs smoothly, grant the necessary permissions for the snap using these commands:
  sudo snap connect nordvpn:network-manager

To start using the app, log in to your Nord Account by entering nordvpn login.

Danach ausführen im Block:

sudo snap connect nordvpn:network-manager
sudo snap connect nordvpn:system-observe
sudo snap connect nordvpn:hardware-observe
sudo snap connect nordvpn:network-control
sudo snap connect nordvpn:network-observe
sudo snap connect nordvpn:firewall-control
sudo snap connect nordvpn:login-session-observe

$ n status
Status: Disconnected

$ nc
Connecting to Austria #191 (at191.nordvpn.com)
You are connected to Austria #191 (at191.nordvpn.com)!
```

## Lokale Entwicklung geht nicht mehr - lokale Netzwerke aktivieren

Wenn man beispielsweise lokal Dockerimages startet, ruft man diese ja mittels localhost:port auf, was bei aktivierter VPN-Verbindung nicht mehr ging.

Dazu ist es nötig explizit, die Erkennung lokaler Netzwerke in der Anwendung zu konfigurieren:

```bash
$ nordvpn set lan-discovery on
```

Danach kann man sowohl lokal laufende Anwendungen aufrufen (localhost) als auch im LAN beispielsweise den Router aufrufen.

## Installation als Debian Paket

Die standardmäßige Installation wäre so:

```bash
// komplettes Weghauen der Anwendung vom Rechner
$ sudo apt --purge autoremove nordvpn


$ cd ~/Downloads
wget "https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb"

sudo dpkg -i nordvpn-release_1.0.0_all.deb
sudo apt update
sudo apt upgrade
sudo apt install nordvpn
```
