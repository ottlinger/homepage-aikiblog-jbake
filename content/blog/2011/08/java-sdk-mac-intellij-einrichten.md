title=Java SDK Mac finden und einrichten in IntelliJ
date=2011-08-23
type=post
tags=Mac, Java SDK, IntelliJ
status=published
~~~~~~

### Java-Einrichtung

Um die neue IntelliJ-Version an den Start zu bringen, muss man ja wissen, wo auf dem Mac das installierte Java liegt – nach ein wenig Suchen findet IntelliJ ein JDK unter:

```bash
/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
```

Das als globale Bibliothek / SDK einrichten und schon verschwinden die Syntaxfehler 🙂

### Einstellungen in IntelliJ

   * Settings -> Editor -> Appearance: show line numbers
   * File -> Project Structure, dort: SDKs – Add – Java SDK (Werte siehe oben)
   * Settings -> File encodings: UTF-8 (IDE Encoding)

Basierend auf diesen Informationen müssen auch die Einstellungen im Terminal entsprechend vorgenommen werden – dazu einfach in der .profile-Datei:

```bash
export JAVA_HOME=`/usr/libexec/java_home`
```

und schon hat man stets den Verweis auf das System-Java.
