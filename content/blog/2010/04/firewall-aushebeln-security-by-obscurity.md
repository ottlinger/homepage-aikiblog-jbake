title=Firewall ausgehebelt - another case of security by obscurity
date=2010-04-07
type=post
tags=Security by obscurity
status=published
~~~~~~

Große Konzerne sind sich doch so ähnlich - heute wieder Kontakt mit einem Kunden gehabt.

Es ging darum einen statischen Prototyp zuzusenden. Da wir intern keine schnelle Möglichkeit hatten einen dedizierten FTP-Server zu haben, wurde die Arbeitskopie einfach als ZIP-Archiv an den Kunden übertragen.
Es ging um einen kleinen Prototyp mit AJAX-Aufklappgedöns.

Am folgenden Morgen tauchte eine Mail auf mit folgender Bemerkung:

> Hallo Herr ICH,
>
> das ZIP ging wegen des JS nicht durch. Bitte bitte doch mal das ZIP mit PW "firmenname" verschlüsseln.
>
> mit freundlichen Grüßen
> Kundenvertreter

Das weckte alte Erinnerungen - die scheinbar dort vorhandene Unternehmensfirewall filterte Dateianhänge und hat eine Heuristik, dass in ZIP gepacktes Javascript (JS) gefährlich ist. Aha!

Jetzt sollte mit einem Passwort nur verhindert werden, dass die Firewall lesenden Zugriff auf die Dateianhänge hat und filternd zuschlägt - ein klarer Fall von security by obscurity. Again!

In einer vorigen Firma mit insgesamt fast 13000 Angestellten war der workaround, dass sämtliche Dateien (dort zählten auch Dateien des Office-Programmmonopolisten zur Liste der unerwünschten Inhalte) mit dem Packprogramm RAR verarbeitet wurden.

Das ist sicher eine gute Form der Verschlüsselung - oha. Sicherheit macht Spaß - besonders mit Usern, die nebenher auch noch arbeiten müssen. Da hat ein Sicherheitsexperte sicher viel Geld für eine ISO-Zertifizierung erhalten. Tolle neue Welt - und vor allem sicher!
