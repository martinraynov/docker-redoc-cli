M = $(shell printf "\033[34;1m▶\033[0m")

.PHONY: help
help: ## Prints this help message
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######################
### MAIN FUNCTIONS ###
######################

.PHONY: build
build: ## Build project for slate application
	$(info $(M) Build project for slate application)
ifndef APPLICATION_FILE
	$(error APPLICATION_FILE is not set !(Use "APPLICATION_FILE=..." before the build command) )
endif
	_UID=$(shell id -u) GID=$(shell id -g) docker build --rm --build-arg APPLICATION_FILE=${APPLICATION_FILE} -t "localhost/redoc-cli:latest" -f ./docker/Dockerfile .
	_UID=$(shell id -u) GID=$(shell id -g) docker run -it -v ${PWD}/output:/srv/output localhost/redoc-cli:latest

.DEFAULT_GOAL := help