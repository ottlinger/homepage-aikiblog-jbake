title=Goneo Zertifikatswarnung mit neuem JDK oder Thunderbird
date=2025-07-29
type=post
tags=goneo, security, certificate, error, JDK, Thunderbird,linux
status=published
~~~~~~

Im April des Jahres 2026 wurden alle Verbindungen zum Provider Goneo sowohl von Thunderbird als auch vom JDK abgewiesen, da das Zertifikat als ungültig markiert wird.

Nach Rücksprache mit dem Goneo-Support hat dieser zumindest eine [Hilfeseite](https://www.goneo.de/hilfe/email/zertifikatswarnung) angelegt, die das Problem versucht zu adressieren.

Die Fehlermeldung sieht so aus:

```bash
PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
javax.net.ssl.SSLHandshakeException: (certificate_unknown)
```

Die vom Provider verwendete Zertifikatskette wird von modernen JDK (z.B. JDK 25.0.2/25.0.4) standardmäßig abgelehnt, daher muss das Zertifikat dem JDK-Truststore hinzugefügt werden, damit man beispielsweise wieder mit JavaxMail Verbindungen zu Goneo Mailfächern öffnen kann. Dies mache ich sehr häufig mit meinem kleinen Tool [MailClena](https://github.com/ottlinger/mailclena).

In Anlehnung an einen [Baeldung-Artikel](https://www.baeldung.com/jvm-certificate-store-errors) zum gleichen Thema, hilft folgendes temporär erzeugte und ausgeführte Skript, Probleme bei einem Wechsel des JDK zu umgehen:

```bash
#!/bin/sh
# certs.sh
/usr/bin/openssl s_client -showcerts -connect smtp.goneo.de:465 </dev/null 2>/dev/null | /usr/bin/openssl x509 -outform PEM > /tmp/smtp.goneo.de.pem
$JAVA_HOME/bin/keytool -import -trustcacerts -file /tmp/smtp.goneo.de.pem -alias smtp.goneo.de -keystore $JAVA_HOME/lib/security/cacerts
rm /tmp/smtp.goneo.de.pem 
```
