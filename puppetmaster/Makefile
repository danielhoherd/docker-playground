NO_CACHE ?= true
NAME ?= puppet

.PHONY: build
build:
	docker build --no-cache=$(NO_CACHE) -t ${USER}/puppet .

.PHONY: run
run:
	docker run -d -p 8140:8140 --name $(NAME) ${USER}/puppet

.PHONY: debug
debug:
	docker run -it -p 8140:8140 --name $(NAME) ${USER}/puppet
