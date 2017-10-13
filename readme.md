# docker-rainforest-cli

> Docker image for [`rainforest-cli`](https://github.com/rainforestapp/rainforest-cli)

* [Docker Hub](https://hub.docker.com/r/bendrucker/rainforest-cli/)

## Usage

```sh
docker run -e RAINFOREST_API_TOKEN bendrucker/rainforest browsers
```

The `rainforest` executable is the entrypoint to the container. 

## Testing

```sh
docker-compose run test
```

## License

MIT © [Ben Drucker](http://bendrucker.me)
