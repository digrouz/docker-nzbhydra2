
[![auto-update](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/auto-update.yml/badge.svg)](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/auto-update.yml)
[![update-alpine](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/update-alpine.yml/badge.svg)](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/update-alpine.yml)
[![dockerhub](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/dockerhub.yml/badge.svg)](https://github.com/digrouz/docker-nzbhydra2/actions/workflows/dockerhub.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/digrouz/nzbhydra2)

# docker-nzbhydra2
Installs nzbhydra into a Linux container

![nzbhydra2](https://github.com/theotherp/nzbhydra2/raw/master/core/ui-src/img/banner-bright.png)

## Tag
Several tag are available:
* latest: see alpine
* alpine: [Dockerfile_alpine](https://github.com/digrouz/docker-nzbhydra2/blob/master/Dockerfile_alpine)
* any version specific tag is based on alpine.

## Description

NZBHydra 2 is a meta search for newznab indexers and torznab trackers. It provides easy access to newznab indexers and many torznab trackers via Jackett. You can search all your indexers and trackers from one place and use it as an indexer source for tools like Sonarr, Radarr, Lidarr or CouchPotato.

https://github.com/theotherp/nzbhydra2

## Usage
    docker create --name=nzbhydra2  \
      -v <path to config>:/config \
      -e UID=<UID default:12345> \
      -e GID=<GID default:12345> \
      -e AUTOUPGRADE=<0|1 default:0> \
      -e TZ=<timezone default:Europe/Brussels> \
      -p 5076:5076 digrouz/nzbhydra2:latest

## Environment Variables

When you start the `nzbhydra2` image, you can adjust the configuration of the `nzbhydra2` instance by passing one or more environment variables on the `docker run` command line.

### `UID`

This variable is not mandatory and specifies the user id that will be set to run the application. It has default value `12345`.

### `GID`

This variable is not mandatory and specifies the group id that will be set to run the application. It has default value `12345`.

### `AUTOUPGRADE`

This variable is not mandatory and specifies if the container has to launch software update at startup or not. Valid values are `0` and `1`. It has default value `0`.

### `TZ`

This variable is not mandatory and specifies the timezone to be configured within the container. It has default value `Europe/Brussels`.

## Notes

* This container is built using [s6-overlay](https://github.com/just-containers/s6-overlay)
* The docker entrypoint can upgrade operating system at each startup. To enable this feature, just add `-e AUTOUPGRADE=1` at container creation.

## Issues

If you encounter an issue please open a ticket at [github](https://github.com/digrouz/docker-nzbhydra2/issues)
