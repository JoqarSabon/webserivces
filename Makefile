#Makefile

###################
#### Variable #####
###################

#Variable - Color text
green=\033[0;32m

#Variable - docker-compose and docker version
version_dc=docker-compose --version
version_d=docker --version

###################
#### Commands #####
###################

#Show help
help:
	@echo 'If necessary insert a sudo command before make'
	@echo ''
	@echo 'make build       ->  docker-compose build'
	@echo 'make up          ->  docker-compose up -d'
	@echo 'make up_attached ->  docker-compose up'
	@echo 'make down        ->  docker-compose down'
	@echo 'make logs        ->  docker-compose logs -f'
	@echo 'make restart     ->  docker-compose restart'
	@echo 'make delete      ->  docker image prune -a && docker image ls'
	@echo 'make version     ->  docker-compose --version; docker --version'

#Build the image
build:
	docker-compose build

#Build and run the container
up: build
	docker-compose up -d

#Build and run the container, but keep attached
up_attached: build
	docker-compose up

#Stop the container. Removes attached volumes
down:
	docker-compose down

#Attach to container logs
logs:
	docker-compose logs -f

#Restart the container
restart:
	docker-compose restart

#Delete all images and list image(testing if it worked)
delete:
	docker image prune -a && docker image ls

#Show version of docker-compose and docker
version:
	@echo "${green}Version list\n";
	${version_dc};
	@echo ""
	${version_d};
