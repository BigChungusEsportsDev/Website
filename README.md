# BigChungus Website

## Deploy

To build and deploy, you must first [install Docker](https://docs.docker.com/engine/install/)

To publish a Docker image, you must first authenticate yourself.

run
``` shell
docker login -u bigchungusesports
```

You'll be prompted to enter a password. Your password will be provided to you by the administrator.

### Build

run
``` shell
docker build . -t bigchungusesports/website:latest
```

### Publish

run
``` shell
docker push bigchungusesports/website:latest
```
