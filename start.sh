#!/bin/bash
set -e

# https://docs.gitlab.com/runner/configuration/advanced-configuration.html#the-executors

gitlab-runner register \
      --non-interactive \
      --url "$CI_SERVER_URL" \
      --token "$CI_SERVER_TOKEN" \
      --executor "$RUNNER_EXECUTOR" \
      --tag-list "$RUNNER_TAG_LIST" \
      --name "$RUNNER_NAME"

gitlab-runner --debug run;
