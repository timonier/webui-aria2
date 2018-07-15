# README

Best and hottest interface to interact with aria2

## Usage

Run the image `timonier/webui-aria2`:

```sh
docker run \
    --publish 80:80 \
    timonier/webui-aria2:latest
# Go to "http://localhost/"
```

This image can be used with [timonier/aria2](https://github.com/timonier/aria2). An example of usage is provided with `docker-compose`:

```sh
# Prepare the project

export RPC_SECRET="0fd9094d-76ca-4a76-be82-eaf513a1ccd2"

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

__Note__: Use the script `bin/build` to test your modifications locally.

If you like / use this project, please let me known by adding a [★](https://help.github.com/articles/about-stars/) on the [GitHub repository](https://github.com/timonier/webui-aria2).

## Links

* [command "docker run"](https://docs.docker.com/reference/run/)
* [docker-compose](https://docs.docker.com/compose/)
* [image "timonier/aria2"](https://hub.docker.com/r/timonier/aria2/)
* [image "timonier/webui-aria2"](https://hub.docker.com/r/timonier/webui-aria2/)
* [timonier/dumb-entrypoint](https://github.com/timonier/dumb-entrypoint)
* [timonier/version-lister](https://github.com/timonier/version-lister)
* [ziahamza/webui-aria2](https://github.com/ziahamza/webui-aria2)
