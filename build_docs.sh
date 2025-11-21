#!/bin/bash

set -e -u -o pipefail

export GO_BIN=$(go env GOPATH)/bin
export PATH=$PATH:$GO_BIN

go install github.com/tj-actions/auto-doc/v3@latest

pushd build-and-push-image >> /dev/null || exit
echo Building `pwd`
rm -f README.md
cp -f README.template.md README.md
auto-doc --filename=action.yml --inputColumns 'Input' --inputColumns 'Required' \
 --inputColumns 'Default' --inputColumns 'Description' --outputColumns Output \
 --outputColumns Description 2>&1 | cat
popd >> /dev/null

pushd sysdig-image-scan >> /dev/null || exit
echo Building `pwd`
rm -f README.md
cp -f README.template.md README.md
auto-doc --filename=action.yml --inputColumns 'Input' --inputColumns 'Required' \
 --inputColumns 'Default' --inputColumns 'Description' --outputColumns Output \
 --outputColumns Description 2>&1 | cat
popd >> /dev/null
