![Laclede's LAN GoldenEye: Source Dedicated Freeplay Server](https://raw.githubusercontent.com/LacledesLAN/gamesvr-gesource-freeplay/master/.misc/banner-gesource-freeplay.png "Laclede's LAN GoldenEye: Source Dedicated Freeplay Server")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then build your own using the parent project [gamesvr-gesource](https://github.com/LacledesLAN/gamesvr-gesource) as the base image for your customized server.

## Linux Container

[![Build Status](https://travis-ci.org/LacledesLAN/gamesvr-gesource-freeplay.svg?branch=master)](https://travis-ci.org/LacledesLAN/gamesvr-gesource-freeplay)
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-gesource-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-gesource-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-gesource-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-gesource-freeplay "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-gesource-freeplay
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run --rm lacledeslan/gamesvr-gesource ./ll-tests/gamesvr-gesource.sh
```

### Run Simple, Interactive Server

```shell
docker run -it --rm lacledeslan/gamesvr-gesource-freeplay ./ll-tests/gamesvr-gesource-freeplay.sh;
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
