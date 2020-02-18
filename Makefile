PROJECT_ID=dojo-gcp
.PHONY : build

build :
	docker build \
	--build-arg "DOCKER_TAG=${DOCKER_TAG}" \
	-t ${IMAGE_NAME} .
