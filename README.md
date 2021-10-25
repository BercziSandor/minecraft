# Minecraft server
The repo is based on https://github.com/itzg/docker-minecraft-server.

## Server configuration
For details see [here](https://github.com/itzg/docker-minecraft-server#server-configuration)

```bash
MOTD="My Server"
SERVER_NAME=MyServer
MODE=creative
DIFFICULTY=normal
OPS=user1,user2

ALLOW_NETHER=true
ALLOW_FLIGHT=FALSE
ANNOUNCE_PLAYER_ACHIEVEMENTS=true
ENABLE_COMMAND_BLOCK=true
MAX_BUILD_HEIGHT=256
SPAWN_ANIMALS=true
SPAWN_MONSTERS=true
SPAWN_NPCS=true
VIEW_DISTANCE=10
#SEED="1785852800490497919"
PVP=true
# LEVEL_TYPE: see https://github.com/itzg/docker-minecraft-server#level-type-and-generator-settings
```

## Kubernetes
### Docker-compose -> k8s

```bash
# https://kubernetes.io/docs/tasks/configure-pod-container/translate-compose-kubernetes/
kompose convert -f docker-compose-paper.yml
...
```

## Types of servers
### Forge
Links:
 - [itzg](https://github.com/itzg/docker-minecraft-server#running-a-forge-server)
 - [Official site](https://forums.minecraftforge.net/)

### Paper
 - [itzg](https://github.com/itzg/docker-minecraft-server#running-a-paper-server)
 - [Official site](https://papermc.io/)



#