# Makefile
start-vanilla: update
	sudo docker-compose -f docker-compose-vanilla.yml up

start-forge: update
	sudo docker-compose -f docker-compose-forge.yml up

start-paper: update
	sudo docker-compose -f docker-compose-paper.yml up

update:
	sudo docker pull itzg/minecraft-server
	sudo docker pull mide/minecraft-overviewer

generate-map-vanilla:
	time sudo docker run \
		-e MINECRAFT_VERSION="1.18.1" \
		-v `pwd`/data/vanilla/world:/home/minecraft/server/world:ro \
		-v `pwd`/overviewer-data:/home/minecraft/render/:rw \
		mide/minecraft-overviewer:latest

generate-map-forge:
	time sudo docker run \
		-e MINECRAFT_VERSION="1.18.1" \
		-v `pwd`/data/forge/world:/home/minecraft/server/world:ro \
		-v `pwd`/overviewer-data:/home/minecraft/render/:rw \
		mide/minecraft-overviewer:latest

generate-map-paper:
	time sudo docker run \
		-e MINECRAFT_VERSION="1.18.1" \
		-v `pwd`/data/paper/world:/home/minecraft/server/world:ro \
		-v `pwd`/overviewer-data:/home/minecraft/render/:rw \
		mide/minecraft-overviewer:latest