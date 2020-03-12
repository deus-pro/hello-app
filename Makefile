PROJECT_ID=dojo-gcp
.PHONY : build

build :
	docker build \
	--build-arg "TAG=${TAG}" \
	-t ${DOCKER_REPO}:${TAG} .

push : build tag
	docker push ${DOCKER_REPO}:${TAG}

tag :
	docker tag ${DOCKER_REPO}:${TAG} ${DOCKER_REPO}:latest
