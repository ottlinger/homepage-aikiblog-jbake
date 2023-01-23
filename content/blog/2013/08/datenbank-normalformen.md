title=Datenbank – Normalformen – Merkspruch
date=2013-08-16
type=post
tags=Codd, database relation, NF, Normalformen
status=published
~~~~~~

Gelegentlich wird man ja doch gefragt wie Normalisierung zu verstehen ist und in welcher Normalform ein Datenbankschema ist – da passte es, dass ich kürzlich auf dem ToRead-Stapel einen Artikel der [Wikipedia](https://de.wikipedia.org/wiki/Normalisierung_%28Datenbank%29#Merkregeln) vor mir hatte.

Nun der dort erwähnte Merkspruch zur Ablage:

>    »The key, the whole key, and nothing but the key. So help me Codd!«

Damit ergeben sich die verschiedenen Normalformen recht einfach:

   1. NF: atomare Werte beziehen sich nur auf den Schlüssel
   1. NF: atomare Werte beziehen sich bei zusammengesetzten Schlüsseln jeweils auf den gesamten
   1. NF: alle Werte hängen nur direkt vom Schlüssel ab
