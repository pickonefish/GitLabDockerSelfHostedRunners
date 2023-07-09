ARG VERSION=18.04
FROM ubuntu:${VERSION}


# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    unzip \
    jq \
    git \
    iputils-ping \
    libcurl4 \
    libunwind8 \
    bash \
    chrony \
    netcat \
    libssl1.0 \
    gnupg \
    lsb-release \
    wget \
    locales \
    apt-transport-https

ENV TZ=Asia/Taipei
ENV LANG="zh_TW.UTF-8"
ENV LC_NUMERIC="zh_TW.UTF-8"
ENV LC_TIME="zh_TW.UTF-8"
ENV LC_COLLATE="zh_TW.UTF-8"
ENV LC_MONETARY="zh_TW.UTF-8"
ENV LC_MESSAGES="zh_TW.UTF-8"
ENV LC_PAPER="zh_TW.UTF-8"
ENV LC_NAME="zh_TW.UTF-8"
ENV LC_ADDRESS="zh_TW.UTF-8"
ENV LC_TELEPHONE="zh_TW.UTF-8"
ENV LC_MEASUREMENT="zh_TW.UTF-8"
ENV LC_IDENTIFICATION="zh_TW.UTF-8"

RUN locale-gen zh_TW.UTF-8


RUN echo "deb https://packages.gitlab.com/runner/gitlab-ci-multi-runner/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/runner_gitlab-ci-multi-runner.list && \
    wget -q -O - https://packages.gitlab.com/gpg.key | apt-key add - && \
    apt-get update -y && \
    apt-get install -y gitlab-ci-multi-runner && \
    apt-get clean && \
    mkdir -p /etc/gitlab-runner/certs && \
    chmod -R 700 /etc/gitlab-runner && \
    rm -rf /var/lib/apt/lists/*

COPY ./start.sh .
RUN chmod +x start.sh

ENTRYPOINT [ "./start.sh" ]
