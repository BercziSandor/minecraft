# Makefile
start-vanilla:
	sudo docker-compose -f docker-compose-vanilla.yml up

update:
	sudo docker pull itzg/minecraft-server
	sudo docker pull mide/minecraft-overviewer

generate-map:
	time sudo docker run \
		-e MINECRAFT_VERSION="1.18.1" \
		-v `pwd`/data/vanilla/world:/home/minecraft/server/world:ro \
		-v `pwd`/overviewer-data:/home/minecraft/render/:rw \
		mide/minecraft-overviewer:latest