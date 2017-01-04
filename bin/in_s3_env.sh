#!/usr/bin/env bash

set -e

export AWS_DEFAULT_REGION=us-west-1

eval "$(python3 /usr/bin/get_s3_env.py)"

exec "$@"