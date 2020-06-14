#!/bin/bash

while read repo; do
  curl -X POST -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"ref": "master", "environment": "periodic execution"}' \
  "https://api.github.com/repos/ansible-roles-matsumura/${repo}/deployments"
done < repolist.txt
