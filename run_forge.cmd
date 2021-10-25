%echo on


cd "%~dp0"
docker-compose -f docker-compose-forge.yml up

pause