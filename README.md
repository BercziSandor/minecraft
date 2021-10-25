# Minecraft server
The repo is based on https://github.com/itzg/docker-minecraft-server.

## Usage
Prerequisits:
 - [Docker Desktop](https://www.docker.com/products/docker-desktop) -> `choco install docker-desktop`
 - (git?)


### Getting source
With git:
```bash
git clone https://github.com/BercziSandor/minecraft.git
cd minecraft
```

With wget (read only!)
```bash
wget https://github.com/BercziSandor/minecraft/archive/refs/heads/main.zip
unzip main.zip
cd minecraft-main
```

Via browser (read only!)
[link](https://github.com/BercziSandor/minecraft/archive/refs/heads/main.zip)

### Run
```bash
./run_paper.sh
# ./run_forge.sh
```


## Server configuration
You can put among others these varables to the `environment` section of the compose files.
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
