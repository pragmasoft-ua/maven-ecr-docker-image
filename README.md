# Docker image derived from maven official image with the ecr-login docker credentials helper installed

Use with jib maven plugin to push images to ecr docker repository

## Build

`docker build . -t pragmasoft/maven-ecr-support

## Run

`docker run -it -v "$PWD:/project" -w /project pragmasoft/maven-ecr-support mvn package

## Push

`docker push pragmasoft/maven-ecr-support`