title=WordPress ade - jBake ole
date=2023-01-20
type=post
tags=wordpress,jbake
status=published
~~~~~~

Nachdem ich jahrelang WordPress-Instanzen am Start hatte, gab es trotzdem ständig Probleme beim Update einspielen:

   * Pluginupdates zerschießen sich, weil WordPress-API-Updates deren Funktion einschränken
   * neue PHP-Versionen des Hosters schalten Standardinstallationen aus
   * ein Großteil des Traffics auf der Seite, war die Anfrage auf xmlrpc.php bzw. update.php

Da ich im Rahmen meiner Arbeit bei der Apache Software Foundation mit [jBake](https://jbake.org) zu tun hatte und ein Update von PHP7 auf PHP8 ansteht, das nicht funktioniert, musste schnell der Inhalt des alten Blogs migriert werden.

Erste Gehversuche mit Hugo waren schwierig, da sich kein gutes Template fand, das schnell genug an den Start ging.
Also fix jBake aus der Kiste geholt und die Inhalte nach und nach in statisches Markdown überführt.
