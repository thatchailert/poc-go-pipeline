BINARY=build

build:
	GO111MODULE=off go build -o bin/engine main.go

run:
	 GO111MODULE=off go run main.go

docker:
	docker build -t ghcr.io/thatchailert/poc-go-pipeline . --no-cache

push:
	docker push ghcr.io/thatchailert/poc-go-pipeline
	
.PHONY: run build