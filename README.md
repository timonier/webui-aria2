# README

Best and hottest interface to interact with aria2

## Usage

```sh
docker run --interactive --publish 80:80 --rm --tty timonier/webui-aria2
```

__Note__: By default `nginx` opens port `80`.

It is possible to change `UID` and / or `GID` of user `nginx` (user used to run `nginx`) with environment variables `NGINX_UID` and `NGINX_GID`:

```sh
docker run --env NGINX_GID=1005 --env NGINX_UID=1005 --interactive --publish 80:80 --rm --tty timonier/webui-aria2
```

It is possible to run a container in `read-only` mode if you mount the following folders:
* `/etc` if you want to change `UID` or `GID` of user `nginx`.
* `/run`, `/tmp` and `/var/cache/nginx`.

__Note__: `/run`, `/tmp` and `/var/cache/nginx` can be mount as `tmpfs`. In that case, `/run` must have flag `exec`.

```sh
# If you do not want to change "UID" or "GID" of user "nginx"

docker run --interactive --publish 80:80 --read-only --rm --tmpfs /run:exec --tmpfs /tmpfs --tmpfs /var/cache/nginx --tty timonier/webui-aria2

# If you want to change "UID" or "GID" of user "nginx"

docker run --env NGINX_GID=1005 --env NGINX_UID=1005 --interactive --publish 80:80 --read-only --rm --tmpfs /run:exec --tmpfs /tmp --tmpfs /var/cache/nginx --tty --volume /etc timonier/webui-aria2
```

This image can be used with [timonier/aria2](https://github.com/timonier/aria2). An example of usage is provided with `docker-compose`:

```sh
# Prepare the project

export RPC_SECRET=0fd9094d-76ca-4a76-be82-eaf513a1ccd2

# Start the project

docker-compose up -d

# Go to "http://localhost/"
```

__Note__: Don't forget to change the token used between `aria2` and `webui-aria2`. Use `bin/generate-secret` if you want to generate a strong token.

## Contributing

1. Fork it.
2. Create your branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

__Note__: Use the script `bin/build-image` to test your modifications locally.

If you like / use this project, please let me known by adding a [★](https://help.github.com/articles/about-stars/) on the [GitHub repository](https://github.com/timonier/webui-aria2).

## Links

* [command "docker run"](https://docs.docker.com/reference/run/)
* [docker-compose](https://docs.docker.com/compose/)
* [image "timonier/aria2"](https://hub.docker.com/r/timonier/aria2/)
* [image "timonier/webui-aria2"](https://hub.docker.com/r/timonier/webui-aria2/)
* [timonier/dumb-entrypoint](https://github.com/timonier/dumb-entrypoint)
* [timonier/version-lister](https://github.com/timonier/version-lister)
* [ziahamza/webui-aria2](https://github.com/ziahamza/webui-aria2)
