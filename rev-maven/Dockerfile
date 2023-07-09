ARG OS_VERSION=ubuntu18.04
ARG VERSION=1.0.0
FROM pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-docker-${VERSION}

RUN apt-get update

# Java / Apache Maven
RUN apt-get install openjdk-8-jdk

# https://maven.apache.org/download.cgi
RUN apt install maven

ENTRYPOINT [ "./start.sh" ]
