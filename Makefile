.PHONY: *

all: build run

build:
	docker build -t gocd-server-image-18-1 .

run:
	docker run -d -p 8155:8155 --name gocd-server-container gocd-server-image-18-1
