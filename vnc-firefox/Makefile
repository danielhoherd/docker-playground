.PHONY: build
build:
	docker build -t firefox-browser .

.PHONY: run
run: build
	@echo "Connect to vnc://localhost:5900"
	docker run --name firefox --rm -p 5900:5900 firefox-browser

.PHONY: shell
shell:
	docker exec -ti firefox bash
