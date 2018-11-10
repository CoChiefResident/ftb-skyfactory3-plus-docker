# FTB's SkyFactory 3 with additional mods

This Dockerfile creates a standard SkyFactory3 installation and then adds mods and config files.

```docker run -i -p 25565:25565 --name sf3 cochief/ftb-skyfactory3-plus```

An example script for starting a docker container:

```bash
#!/bin/bash

docker stop sf3
docker rm sf3
docker pull cochief/ftb-skyfactory3-plus

docker run -d --name sf3 \
           -v /home/core/sf3/world:/minecraft/world \
           -v /home/core/sf3/ops.json:/minecraft/ops.json \
           -v /home/core/sf3/server.properties:/minecraft/server.properties \
           -v /home/core/sf3/whitelist.json:/minecraft/whitelist.json \
           --restart always \
           -p 25565:25565 \
           cochief/ftb-skyfactory3-plus
```
