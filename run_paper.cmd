%echo on
cd "%~dp0"

docker compose -f docker-compose-paper.yml up

pause