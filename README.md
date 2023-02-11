# homepage-aikiblog-jbake
* jBake version of my very old Wordpress blog
* available at https://blog.aikiit.de

# Dev setup
## jBake install & local setup

Download >= [jbake-2.7.0-rc.6-bin.zip](https://jbake.org/news/jbake-v2.7.0-release-candidate.html) due to problems on newer Apple hardware
(regular brew installed version crashes upon start)

```
$ jbake -i # init only once
$ jbake -b -s # run in autobake/local dev mode
```

### Different templates for jBake

* https://yamane.github.io/bj-demo/

## Local setup

* [run.sh](./run.sh) - start jbake in development mode (needs jbake on the PATH)
* sync.sh - not in SCM; upload sync script

### Template for upstream sync

```bash
#!/bin/bash
echo "Cleaning output directory ...."
rm -rf output/*
echo "Starting to bake ...."
jbake -b
echo "Synching to upstream host...."
scp -r output/* my-ISP-coordinates
```
