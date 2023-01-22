title=Reguläre Ausdrücke
date=2010-05-28
type=post
tags=regular expressions
status=published
~~~~~~

Kommt ja immer wieder im Alltag vor, deshalb hier ein paar Links zur allgemeinen Ablage zum Thema in bezug auf Groovy und Java selbst:

   * RegExCoach von Jeremy Rayner, 2007 - Github: [a](https://github.com/edalquist/RegexCoach), [b](https://github.com/Crydust/RegexCoach)
   * [Webbasierter RegEx-Tester](https://www.regextester.com/)
   * [Einführung in reguläre Ausdrücke](https://docs.oracle.com/javase/tutorial/essential/regex/index.html) in Java von Sun selbst

Viel Spaß damit. Ursprünglich begann alles mit regulären Ausdrücken, um Wortfetzen in Webseitentexten zu finden und umliegendes HTML zu entfernen:

> .*CEO.?< ?[<>/a-zA-Z]*>{1}([\w ]*).* filtert Dir alles weg was Tags nach CEO enthält und gibt Dir in $1 (Gruppe 1) den Namen zurück
> wenn das Ergebnis leer ist (weil z.b. zwischen CEO und dem Namen keine Tags sind)

> .*CEO.?([\w ]*).* filtert Dir alles bis zu dem Text nach CEO: weg und gibt dir die darauf folgenden word characters zurück und schneidet den Ballast danach weg
