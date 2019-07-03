# variables
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

restart:
	docker restart pythonapi

dev-env: build run

build:
	docker build -t webbase .

run:
	docker run --name=pythonapi -p 5000:5000 -d --mount type=bind,source=${mkfile_dir}app/,target=/srv webbase
	#docker run --name=pythonapi -p 5000:5000 -d webbase
	sleep 5
	open http://0.0.0.0:5000

rebuild:
	docker rm -f pythonapi
	docker run --name=pythonapi -p 5000:5000 -d --mount type=bind,source=${mkfile_dir}app/,target=/srv webbase

clean:
	docker rm -f pythonapi
	docker rmi webbase

attach:
	docker exec -it pythonapi ash

logs:
	docker logs -f pythonapi
