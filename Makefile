PROJECT_ID=dojo-gcp
TAG := $(shell git describe HEAD --tags)
.PHONY : build

build :
	docker build \
	--build-arg "TAG=${TAG}" \
	-t ${DOCKER_REPO}:${TAG} .

push :
	docker push ${DOCKER_REPO}:${TAG}
	docker push ${DOCKER_REPO}:latest

tag :
	docker tag ${DOCKER_REPO}:${TAG} ${DOCKER_REPO}:latest
