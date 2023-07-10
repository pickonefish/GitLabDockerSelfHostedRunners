#!/bin/bash
set -e

# https://docs.gitlab.com/runner/configuration/advanced-configuration.html#the-executors

gitlab-runner register \
      --url "$CI_SERVER_URL" \
      --token "$CI_SERVER_TOKEN" \
      --executor "$RUNNER_EXECUTOR"

gitlab-runner --debug run;
