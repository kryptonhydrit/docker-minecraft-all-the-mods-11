# Docker - Minecraft | All the Mods 11 Server
![Docker Image Version](https://img.shields.io/docker/v/kryptonhydrit/minecraft-atm11)
![Docker Pulls](https://img.shields.io/docker/pulls/kryptonhydrit/minecraft-atm11)
![Docker Stars](https://img.shields.io/docker/stars/kryptonhydrit/minecraft-atm11)

- [Docker - Minecraft | All the Mods 11 Server](#docker---minecraft--all-the-mods-11-server)
  - [About](#about)
  - [Getting started](#getting-started)
  - [Environment variables](#environment-variables)
    - [Server settings](#server-settings)
    - [Player settings](#player-settings)
  - [FAQ](#faq)
    - [Update to newer version](#update-to-newer-version)
  - [Sources](#sources)


## About
On first run the container will download and install the tagged Version ´[All the Mods 11](https://www.curseforge.com/minecraft/modpacks/all-the-mods-11)-X.X.X´ and install it.

## Getting started

1. Create a `game` sub-directory on your Docker-Node
    - (Examples: `/opt/minecraft-atm11`)
    - Directory will be used to store the gamefiles
2. Pull latest version with `docker pull kryptonhydrit/minecraft-atm11:latest`
3. Start the container with the following command: \
  `docker run -d -e "EULA=true" -v "/opt/minecraft-atm11:/data" -p "25565:25565" --name minecraft-atm11 kryptonhydrit/minecraft-atm11:latest`

## Environment variables

> [!NOTE]
> The container supports all keys of Minecraft version 26.1.2.
> For the individual descriptions please have a look at the [documentation](https://minecraft.wiki/w/Server.properties#Keys).\
> For configuration purposes, entries from the `server.properties` file can be mapped to environment variables using a simple normalization scheme.\
> Each property key is converted to uppercase, and all dots (`.`) and hyphens (`-`) are replaced with underscores (`_`).

### Server settings
| Variable | Description | Type |
| --- | --- | --- |
| EULA | Must be set to `true` in order to start the server. | Boolean |
| MANAGE_SERVER_PROPERTIES | If set to false, the `server.properties` file is not managed by the container. | Boolean | 

### Player settings
| Variable | Description |
| --- | --- |
| OPS_LIST | Comma-separated list of players to assign operator rights |
| ALLOW_LIST | Comma-separated list of players to add to the whitelist |

## FAQ

### Update to newer version
> [!CAUTION]
> Don't update your server without backup the `game` directory
1. Backup your `game` directory
2. Pull latest image or specific version from the container `docker pull kryptonhydrit/minecraft-atm11:TAG`
3. Start the container and mount the existing `game` directory

## Sources

Github: https://github.com/kryptonhydrit/docker-minecraft-all-the-mods-11 \
Docker: https://hub.docker.com/r/kryptonhydrit/minecraft-atm11
