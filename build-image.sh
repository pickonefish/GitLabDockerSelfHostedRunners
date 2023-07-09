DATE=`date '+%Y%m%d.%H%M%S'`
GIT_HASH=`git describe --always --abbrev=7`
VERSION_TAG=$DATE-$GIT_HASH

VERSION=18.04
OS_VERSION=ubuntu1804

docker build --build-arg VERSION=${VERSION} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-${VERSION_TAG} .
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-docker-${VERSION_TAG} ./rev-docker

docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-dotnetcore-${VERSION_TAG} ./rev-dotnetcore
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-dotnetcore-${VERSION_TAG}
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-golang-${VERSION_TAG} ./rev-golang
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-golang-${VERSION_TAG}
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-java8-grail-${VERSION_TAG} ./rev-grail
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-grail-${VERSION_TAG}
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-java8-maven-${VERSION_TAG} ./rev-maven
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-maven-${VERSION_TAG}
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-nodejs-${VERSION_TAG} ./rev-nodejs
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-nodejs-${VERSION_TAG}
docker build --build-arg OS_VERSION=${OS_VERSION} --build-arg VERSION=${VERSION_TAG} -t pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-python-${VERSION_TAG} ./rev-python
docker push pickonefish/gitlab-docker-self-hosted-runner:${OS_VERSION}-python-${VERSION_TAG}
