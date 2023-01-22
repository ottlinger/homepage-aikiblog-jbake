title=WhatWeb – Was hinter den Webseiten steckt
date=2010-06-05
type=post
tags=whatweb, analyse
status=published
~~~~~~

Im aktuellen Linux Magazin 07/10 geblättert und ein nettes kleines Tool entdeckt:

   * [WhatTheWeb](https://morningstarsecurity.com/research/whatweb) – Download [hier](https://github.com/urbanadventurer/WhatWeb)
   * WhatTheWeb – [Erläuterungen](https://sourceforge.net/directory/software-development/linux/)

Beim Ausprobieren gesehen, dass viele Provider noch uralte PHP-Versionen anbieten und Seiten einiger politischer Parteien das Tool ein wenig überlisten, da es mit einem Fehler aussteigt:

```java
["phpBB",
#
```

### Beispielaufruf

```bash
$ whatweb aikiblog.de
http://aikiblog.de [301 Moved Permanently] Apache, Country[GERMANY][DE], HTTPServer[Apache], IP[212.90.148.19], RedirectLocation[https://aikiblog.de/], Strict-Transport-Security[max-age=0; includeSubDomains], Title[301 Moved Permanently]
https://aikiblog.de/ [200 OK] Apache, Country[GERMANY][DE], HTML5, HTTPServer[Apache], IP[212.90.148.19], JQuery[3.6.1], MetaGenerator[WordPress 6.1.1], Script, Strict-Transport-Security[max-age=0; includeSubDomains], Title[AIKIBLOG &#8211; Harmonie und IT &#8211; Neues aus der Welt der Harmonie &#8211; in der Ruhe liegt die Kraft], UncommonHeaders[link], WordPress[6.1.1]

$ whatweb blog.aiki-it.de
http://blog.aiki-it.de/ [301 Moved Permanently] Apache, Country[GERMANY][DE], HTTPServer[Apache], IP[212.90.148.19], RedirectLocation[https://blog.aiki-it.de/], Strict-Transport-Security[max-age=0; includeSubDomains], Title[301 Moved Permanently]
https://blog.aiki-it.de/ [200 OK] Apache, Bootstrap, Country[GERMANY][DE], HTML5, HTTPServer[Apache], IP[212.90.148.19], JQuery[1.11.1], Meta-Author[phil], MetaGenerator[JBake], PoweredBy[OpenSource], Script, Strict-Transport-Security[max-age=0; includeSubDomains], Title[AIKIBLOG &mdash; Harmonie und IT]
```
