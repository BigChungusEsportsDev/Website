# BigChungus Website

## Testing

Setup https://git.caliv.ch/environment/developer-environment

Add this to your hosts file `/etc/hosts` on Linux and `c:\Windows\System32\Drivers\etc\hosts` on Windows 10/11

``` text
127.0.0.1 bigchungus.test
```

Run

```shell
docker compose up
```

Once you open `bigchungus.test` you should see the current version.
You'll have to reload the page to get the latest version, there is NO auto refreshing

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
