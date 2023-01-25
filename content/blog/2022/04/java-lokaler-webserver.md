title=Lokales Teilen von Dateien - jetzt auch mit Java-Boardmitteln jwebserver
date=2022-04-13
type=post
tags=jwebserver, lokales Teilen von Dateien, Webserver
status=published
~~~~~~

Nachdem es mittels [Python](/blog/2016/05/lokales-teilen-von-dateien-webserver-python.html) schon lange einfache Wege gibt, einen lokalen Webserver zu starten,
gibt es seit Java 18 nun auch die Möglichkeit, dies direkt mit JDK-Boardmitteln zu machen:

> jwebserver
> [-b bind address] [-p port] [-d directory]
> [-o none|info|verbose] [-h to show options]
> [-version to show version information]


Quelle: https://blogs.oracle.com/javamagazine/post/java-18-simple-web-server


```bash
21:16 $ jwebserver
Binding to loopback by default. For all interfaces use "-b 0.0.0.0" or "-b ::".
Serving /home/user/Documents/workspace/justme/folder and subdirectories on 127.0.0.1 port 8000
URL http://127.0.0.1:8000/
127.0.0.1 - - [13/Apr./2022:21:26:37 +0200] "GET / HTTP/1.1" 200 -
```

Und dann via http://localhost:8000 abrufbar.
