PROJECT_ID=dojo-gcp
.PHONY : build

build :
	docker build \
	--build-arg "TAG=${TAG}" \
	-t ${DOCKER_REPO}:${TAG} .
