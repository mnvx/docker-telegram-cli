# Docker container with telegram-cli

## Usage

```bash
git pull git@github.com:mnvx/docker-telegram-cli.git
cd docker-telegram-cli

# Kill old containers
# docker kill $(docker ps -qa) && docker rm -v $(docker ps -qa)

docker build -t telegram-cli .
docker run --rm -t telegram-cli

# If you have one launched container
docker exec -it `docker ps -q` /bin/bash
```

Run telegram-cli in docker container:

```bash
telegram-cli -W
```