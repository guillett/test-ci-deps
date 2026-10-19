#!/bin/sh

curl -L --fail-with-body \
 -X POST \
 -H "Accept: application/vnd.github+json" \
 -H "Authorization: Bearer ${OPENFISCADOC_BOT_ACCESS_TOKEN}" \
 -H "X-GitHub-Api-Version: 2022-11-28" \
 -d '{"ref":"main"}' \
 https://api.github.com/repos/guillett/test-ci-deps/actions/workflows/on-tag.yaml/dispatches
