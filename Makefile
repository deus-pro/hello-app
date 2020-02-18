PROJECT_ID=dojo-gcp
.PHONY : build

build :
	docker build \  # (2)
#	--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
#	--build-arg "SOURCE_COMMIT=$GIT_SHA1" \
#	--build-arg "DOCKERFILE_PATH=$DOCKERFILE_PATH" \
#	--build-arg "SOURCE_TYPE=$SOURCE_TYPE" \
#	--build-arg "VERSION=
#	${VERSION:+--build-arg "VERSION=$VERSION"} \  # (3)
	${DOCKER_TAG:+--build-arg "DOCKER_TAG=$DOCKER_TAG"} \  # (3)
	-t $IMAGE_NAME .  # (4)
