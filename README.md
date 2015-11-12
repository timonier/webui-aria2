### Installation

Pull the image `mauchede/webui-aria2`:

```bash
# Get the latest image
docker pull mauchede/webui-aria2
```

### Usage

Run the image `mauchede/webui-aria2`:

```bash
docker run -p 80:80 mauchede/webui-aria2
# Go to the URL "localhost"
```

This image can be used with [mauchede/aria2](https://github.com/mauchede/aria2). An example of usage is provided with `docker-compose`:

```
# Start the project
docker-compose up -d

# Go to the URL "localhost"
```

### Contributing

1. Fork it.
2. Create your branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

### Links

* [docker-compose](https://docs.docker.com/compose/)
* [image "mauchede/aria2"](https://hub.docker.com/r/mauchede/aria2/)
* [image "mauchede/webui-aria2"](https://hub.docker.com/r/mauchede/webui-aria2/)
* [mauchede/aria2](https://hub.docker.com/r/mauchede/aria2/)
* [ziahamza/webui-aria2](https://github.com/ziahamza/webui-aria2)
