# webui-aria2

Dockerized [webui-aria2](https://hub.docker.com/r/mauchede/webui-aria2/): Best and hottest interface to interact with aria2.

## Usage

An example of usage is provided with the `docker-compose`:

```
# Start the project
docker-compose up -d

# Go to the URL "localhost"
```

It is possible to configure the authentication options via the environment variable:
* `RPC_SECRET` will be used as RPC token.
* `RPC_HOST` will be used as aria2 host.

## Contributing

1. Fork it.
2. Create your branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

## Links

* [docker-compose](https://docs.docker.com/compose/)
* [image "mauchede/aria2"](https://hub.docker.com/r/mauchede/aria2/)
* [image "mauchede/webui-aria2"](https://hub.docker.com/r/mauchede/webui-aria2/)
* [source "ziahamza/webui-aria2"](https://github.com/ziahamza/webui-aria2)
