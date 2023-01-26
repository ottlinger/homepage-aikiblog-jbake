title=Kommandos in allen Unterverzeichnissen ausführen
date=2020-03-10
type=post
tags=bash, command in all subfolder
status=published
~~~~~~

Wer beispielsweise verschiedene ausgecheckte Projekte umziehen lassen will und dafür über seinen gesamten workspace pro Verzeichnis Dinge ausführen will, kann auf diesen Weg zurückgreifen:

```bash
for dir in ./*; do (cd "$dir" && git pull); done
```

Ideal vor einem Git-Umzug 😉 oder wenn man längere Zeit offline in einem deutschen Zug ist oder so.
