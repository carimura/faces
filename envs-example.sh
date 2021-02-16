#!/usr/bin/env bash

set -ex

# on linux/bmc find this out with "docker inspect --type container -f '{{.NetworkSettings.Gateway}}' functions"
export BASE_HOST=docker.for.mac.localhost
export FN_API_ENDPOINT=http://${BASE_HOST}:8080
export FN_INVOKE_ENDPOINT=${FN_API_ENDPOINT}/invoke
export DOCKER_LOCALHOST=${BASE_HOST}
export COMPLETER_BASE_URL=http://${DOCKER_LOCALHOST}:8081

export PUBNUB_PUBLISH_KEY=".."
export PUBNUB_SUBSCRIBE_KEY=".."

export TWITTER_CONF_KEY="..."
export TWITTER_CONF_SECRET="..."
export TWITTER_TOKEN_KEY="..."
export TWITTER_TOKEN_SECRET="..."

export FLICKR_API_KEY="..."
export FLICKR_API_SECRET="..."

export SLACK_API_TOKEN="...."

# minio configuration
export INSTALL_MINIO=1
export MINIO_SERVER_URL=http://${DOCKER_LOCALHOST}:9000
export STORAGE_ACCESS_KEY="DEMOACCESSKEY"
export STORAGE_SECRET_KEY="DEMOSECRETKEY"
export STORAGE_BUCKET="oracle-vista-out"
export S3_REGION="us-east-1"

# change this to deploy to a different app  other than "vista"
# export APP=vista

# set this to run vista in flow mode
export VISTA_MODE=flow
