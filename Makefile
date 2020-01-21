PROJECT_ID=dojo-gcp
.PHONY : build push auth

build :
	docker build -t gcr.io/${PROJECT_ID}/hello-app:v3 .

push :
	docker push gcr.io/${PROJECT_ID}/hello-app:v3

auth :
	gcloud auth configure-docker
