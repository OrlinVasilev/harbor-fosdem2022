build:
	docker build . --build-arg source_image=alpine:latest -t local.goharbor.io/fosdem/uuid:v1
push: build login
	docker push local.goharbor.io/fosdem/uuid:v1

build-vul:
	docker build . --build-arg source_image=alpine:3.10.1 -t local.goharbor.io/fosdem/uuid:v1-vul

push-vul: build-vul login
	docker push local.goharbor.io/fosdem/uuid:v1-vul

login:
	docker login local.goharbor.io -u fosdem -p Fosdem2022