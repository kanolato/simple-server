VERSION := $(shell cat VERSION)
TAG := kanolato/simple-server
build:
	docker build -t ${TAG}:${VERSION} .
push:
	docker push ${TAG}:${VERSION}
run:
	go run main.go