1. [1 Usage](#1-usage)
   1. [1.1 Getting source](#11-getting-source)
   2. [1.2 Run](#12-run)
2. [2 Server configuration](#2-server-configuration)
3. [3 Kubernetes](#3-kubernetes)
   1. [3.1 Docker-compose -> k8s](#31-docker-compose---k8s)
4. [4 Types of servers](#4-types-of-servers)
   1. [4.1 Forge](#41-forge)
   2. [4.2 Paper](#42-paper)


The repo is based on https://github.com/itzg/docker-minecraft-server.

## 1 Usage
Prerequisits:
 - [Docker Desktop](https://www.docker.com/products/docker-desktop) -> `choco install docker-desktop`
 - (git?)


### 1.1 Getting source
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

### 1.2 Run
```bash
./run_paper.sh
# ./run_forge.sh
```


## 2 Server configuration
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

## 3 Kubernetes
### 3.1 Docker-compose -> k8s

```bash
# https://kubernetes.io/docs/tasks/configure-pod-container/translate-compose-kubernetes/
kompose convert -f docker-compose-paper.yml
...
```

## 4 Types of servers
### 4.1 Forge
Links:
 - [itzg](https://github.com/itzg/docker-minecraft-server#running-a-forge-server)
 - [Official site](https://forums.minecraftforge.net/)

### 4.2 Paper
 - [itzg](https://github.com/itzg/docker-minecraft-server#running-a-paper-server)
 - [Official site](https://papermc.io/)
