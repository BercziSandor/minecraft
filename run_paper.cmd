%echo off

docker version >NUL 2>NUL || (
    echo Run docker Desktop first.
    pause
    exit /b 1
)

cd "%~dp0"
docker-compose -f docker-compose-paper.yml up

pause