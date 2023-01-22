title=Keychain – bequemes Starten in allen Konsolen
date=2010-05-24
type=post
tags=keychain, bash, console
status=published
~~~~~~

Oftmals benötigt man ja bestehende SSH- oder GPG-Agenten, um als Entwickler bequem auf Repositories zugreifen zu könne. Eine minimalinvasive Systemintegration will her – hier eine Integration in die *.bashrc*:

```bash
keychain
. "$HOME/.keychain/HIER_KOMMT_DER_RECHNERNAME_REIN-sh"
ssh-add -l &>/dev/null || ssh-add
```

Dann kann man schnell beliebige Konsolen starten oder Konsolentabs öffnen und muss nicht seine SSH-Passwörter eingeben. Dies ist nur 1x beim initialien Anmelden ans System nötig.

Aber: manche Ubuntuversionen starten bereits bei jeder bestehenden X-Session einen SSH-agent, der dann zu Ärger führen kann.
