### Installation

Pull the image `timonier/webui-aria2`:

```bash
# Get the latest image
docker pull timonier/webui-aria2
```

### Usage

Run the image `timonier/webui-aria2`:

```bash
docker run -p 80:80 timonier/webui-aria2
# Go to the URL "localhost"
```

This image can be used with [timonier/aria2](https://github.com/timonier/aria2). An example of usage is provided with `docker-compose`:

```bash
# Copy the default configuration
cp docker-compose.yml.dist docker-compose.yml

# Start the project
docker-compose up -d

# Go to the URL "localhost"
```

__Note__: Don't forget to change the token used between `aria2` and `webui-aria2`. Use `bin/generate-secret` if you want to generate a strong token.

### Contributing

1. Fork it.
2. Create your branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

__Note__: Use the script `bin/build` to test your modifications locally.

### Links

* [command "docker pull"](https://docs.docker.com/reference/commandline/pull/)
* [command "docker run"](https://docs.docker.com/reference/run/)
* [docker-compose](https://docs.docker.com/compose/)
* [image "timonier/aria2"](https://hub.docker.com/r/timonier/aria2/)
* [image "timonier/webui-aria2"](https://hub.docker.com/r/timonier/webui-aria2/)
* [webui-aria2](https://github.com/ziahamza/webui-aria2)
