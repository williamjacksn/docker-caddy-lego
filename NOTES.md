To start fresh:

```shell
docker compose run --rm go
unset GOPATH
rm go.mod go.sum
go mod init github.com/williamjacksn/docker-caddy-lego
go mod tidy
```

To update caddy-dns/lego-deprecated:

```shell
docker compose run --rm go
unset GOPATH
go get github.com/caddy-dns/lego-deprecated
```
