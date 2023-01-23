title=DB2 wieder eine besondere Datenbank
date=2013-09-06
type=post
tags=DB2, Sonderlocken
status=published
~~~~~~

In der letzten Zeit durfte ich mit einer neuen relationalen Datenbank arbeiten. Nach langer Zeit mit dem Oracle dachte ich, dass die anderen Anbieter weniger besonders sind, aber dieses Tier hat es auch in sich.

   1. Die spärlich vorhandene Dokumentation des Herstellers mit den 3 Buchstaben ist schwer durchsuchbar und kaum suchmaschinenindiziert.
   1. Die Datenbank meldet Fehler in einer Form von Telefonnummern. Durch einen bestimmten JDBC-Verbindungsparameter
     ```java
     jdbc:db2://ipOfDB2Host:50000/DB2_TEST:retrieveMessagesFromServerOnGetMessage=true;
     ```
    kann man auf Fehlermeldungen umschalten, die aber nur für wenige Fehler wirklich aussagekräftig sind:
    ```java
    Internal Exception: com.ibm.db2.jcc.am.BatchUpdateException: [jcc][t4][102][10040][4.16.53] Batchfehler. Der Batch wurde übergeben, jedoch ist mindestens eine Ausnahmebedingung bei einem Einzelelement im Batch aufgetreten.
    2013/09/06 11:26:56.217 | Verwenden Sie getNextException(), um die Ausnahmebedingungen für bestimmte Elemente im Batch abzurufen. ERRORCODE=-4229, SQLSTATE=null
    2013/09/06 11:26:56.227 | Error Code: -4229
    ```
   1. Datenbanktabellen kommen intern in einen Status ‚Benötigt Reorganisieren‘ (Pending Reorganize). Das Recht Tabellen zu Organisieren hat man nicht automatisch, wenn man das ALTER TABLE-Recht hat. Welche Operation den Status auslöst, findet man [hier](/blog/2013/09/db2-pending-reorganize-was-loest-den-status-aus.html).
   1. Entgegen dem Verhalten anderer Datenbanken kann man Indexe mehrfach anlegen – beim 1.Mal wird ein Index angelegt, bei allen anderen Malen das Kommando ohne Kommentar ignoriert. Stattdessen werfen andere Datenbanken Ausnahmen, denen man entnehmen kann, dass die Datenbankindexe bereits existieren.

Komisch, dass es die nicht vom Markt gefegt hat oder einfach durch eine freie Alternative ersetzt wurde wie [H2](https://h2database.com/) oder [PostgreSQL](https://www.postgresql.org/)
