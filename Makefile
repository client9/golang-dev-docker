CONTAINER=nickg/golang-dev-docker

build:
	docker build -t ${CONTAINER} .

console: build
	docker run --rm -it ${CONTAINER} sh

clean:
	rm -f *~
