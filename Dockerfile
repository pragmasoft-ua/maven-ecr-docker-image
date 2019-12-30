FROM maven:3.6.3-jdk-11
RUN curl https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/0.3.1/linux-amd64/docker-credential-ecr-login -o /usr/bin/docker-credential-ecr-login && \
	chmod a+x /usr/bin/docker-credential-ecr-login && \
	mkdir -p ~/.docker && \
	echo {\"credsStore\": \"ecr-login\"} > ~/.docker/config.json

