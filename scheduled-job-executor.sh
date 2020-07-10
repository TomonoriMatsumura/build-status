#!/bin/bash

while read repo; do
  curl -X POST -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"ref": "master", "environment": "periodic execution"}' \
  "https://api.github.com/repos/ansible-roles-matsumura/${repo}/deployments"
done < repolists/roles.txt

while read repo; do
  curl -X POST -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"ref": "master", "environment": "periodic execution"}' \
  "https://api.github.com/repos/ansible-joke-programs/${repo}/deployments"
done < repolists/playbooks-joke-programs.txt
