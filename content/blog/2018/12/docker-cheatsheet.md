title=Docker Cheatsheet - Links zur Arbeit mit Docker
date=2018-12-17
type=post
tags=docker cheat sheet
status=published
~~~~~~

Die Entwicklung mit [Docker](https://docs.docker.com/get-docker/) macht Spaß, aber man braucht ein paar Hilfen:

### container id finden
```bash
$ docker ps -a | grep my-service
```

### container anhalten
```bash
$ docker stop {container-id}
```

### container entfernen
```bash
$ docker rm {container-id}
```

### health check eines auf [SpringBoot](https://spring.io/projects/spring-boot) basierenden Service prüfen

```bash
$ docker exec {container-id} curl -X GET http://localhost:8081/system/health | jq '.'
```

### log files lokal verfolgen (tail -f)
```bash
$ docker logs -f {container-id}
```
