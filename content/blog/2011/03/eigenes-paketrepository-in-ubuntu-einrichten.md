title=Ubuntu Repository manuell ändern – nötige Schlüssel hinzufügen
date=2011-03-03
type=post
tags=Ubuntu, custom package repository, add key
status=published
~~~~~~

Wenn man spezielle Repositorien in Ubuntu einbinden will, muss man diese zuerst hinzufügen und dann noch die Repositry-Schlüssel zur Liste der gültigen Schlüssel hinzufügen.
Die nötigen Eckdaten findet man meistens in Launchpad, wo Detailinformationen des PPA stehen.

Hier am Beispiel von [gPodder](https://launchpad.net/~thp/+archive/ubuntu/gpodder), [Github Projektseite](https://gpodder.github.io/):

```bash
sudo add-apt-repository ppa:thp/gpodder
```

oder manuell in /etc/apt/sources.list.d/gpodder:
```bash
deb https://ppa.launchpad.net/thp/gpodder/ubuntu maverick main
deb-src https://ppa.launchpad.net/thp/gpodder/ubuntu maverick main
```

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B016C6A9D0B071368E999F9BC18DC20E89617F48
```

Dann kriegt man nicht ständig Warnungen – sind die Repositry-Einträge netzwerktechnisch erreichbar, so sollte dann ein Update mit folgendem Alias möglich sein:
```bash
alias emerge='aptitude update && aptitude safe-upgrade'
```
