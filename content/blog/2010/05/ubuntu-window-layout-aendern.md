title=neues Ubuntu-Fensterlayout – Buttons links statt rechts – wie ändern?
date=2010-05-24
type=post
tags=ubuntu, window layout
status=published
~~~~~~

Da der Mensch ja ein Gewohnheitstier ist, wurde in der aktuellen Ubuntu-Version ein wenig an der Anordung der Fensterschaltflächen gewerkelt.

Neu ist nun die Reihenfolge *close,minimize,maximize:*.
Möchte man die alte Ordnung haben (rechts statt links), muss die Reihenfolge *:minimize,maximize,close* sein.

Als Kurzversion:

   1. *gconf-editor* starten
   1. *apps/metacity/general* suchen
   1. Dort das Feld *button_layout* wie oben einstellen
