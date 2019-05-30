#TAG    := $$(git log --pretty=format:'%h' -n 1)
#IMG    := ${REG}/${NAME}:${TAG}
#LATEST := ${REG}/${NAME}:latest
USER     :=toms
PASS     :=klio89
APP     := swarmprom
DATA    := ${HOME}/d/${APP}

build:
	ADMIN_USER=${USER} ADMIN_PASSWORD=${PASS} \
	docker stack deploy -c docker-compose.yml mon



