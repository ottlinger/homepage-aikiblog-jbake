title=Eclipse Indigo einrichten – SVN/Maven
date=2011-08-18
type=post
tags=Eclipse, Indigo, setup, Maven, Subversion
status=published
~~~~~~

Die Zwischenzeit konnte ich nutzen, um meine virtuelle Maschine und das Äpfelchen auf den aktuellsten Stand zu bringen.

Um ins SVN der Firma zu kommen, muss wieder ein wenig manuell nachgearbeitet werden.

### Zuerst das aktuelle 4.4/Luna-Eclipse runterziehen:

   * Eclipse Luna 4.4 – Standard
   * Eclipse Luna 4.4 – JavaDevelopers

### Dann noch Subversion installieren:

   * Mac: Collab.net-Gedöns installieren – man muss sich leider anmelden
   * Ubuntu: aptitude install subversion libsvn-java

### Eclipse-Plugins installieren

Über den Eclipse-Marktplatz die folgenden Plugins nachinstallieren und dann jeweils Eclipse neu starten:

    Subclipse (Tigris) – SVN-Provider (nicht: Subversion nehmen sonst kommt alles durcheinander)
    M2 – Maven2Eclipse – Eclipse-Maven-Integration
    Maven Development Tools
    Moreunit
    EclEmma
    EGit
    Gradle

### Eclipse-Konfiguration nachziehen

Die JavaHL-Bibliothek liegt nicht an Standardpfaden, weshalb die Eclipse-Konfigurationsdatei eclipse.ini angepasst werden muss – die Zeile muss eingefügt werden:

    Mac: -Djava.library.path=/opt/subversion/lib
    Ubuntu: -Djava.library.path=/usr/lib/jni

Sobald die Konfig nachgezogen ist, sieht man bei einem Neustart im Einstellungsfenster zu Team/SVN, dass JavaHL zur Auswahl steht. Dann funzt alles.

Ansonsten nicht vergessen, dass das Repo mit svn+ssh in der URL eingebunden werden muss.

So – nun also mit der neuen Version am Start und ready 2 rumble 🙂

Die Alternative mittels MacPorts die Bindings sowie eine aktuelle SVN-Version auf dem Mac zu installieren haben nicht funktioniert, weil MacPorts mit Schmerzen abbrach.

### Hilfereiche Links sind ebenfalls:

    JavaHL-Infoseite von Subclipse
    Eclipse-Downloadseite – aktuell: Indigo – Eclipse IDE for Java EE Developers (MacOSX)
    Update 20110819: die Einstellungen für Eclipse können auch in einer rc-Datei abgelegt werden
    Update 20140814: Ubuntu 14.04 hat neue Pfade zu den SVN-javahl-Erweiterungen und die Eclipse.ini muss anders aussehen:

    ORIGINAL: -Djava.library.path=/usr/lib/jni
    NEU: -Djava.library.path=/usr/lib/x86_64-linux-gnu/jni
