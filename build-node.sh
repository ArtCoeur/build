#!/bin/bash

# Build a node container using the node template
# Application repo is arg 1
# Container name is arg 2

NODE_TMPL=git@github.com:ArtCoeur/node-template.git
APP_REPO=$1

git clone --depth 1 $NODE_TMPL

rm -rf node-template/.git

cd node-template/src

git clone --depth 1 $APP_REPO

# expect a lib directory - test this here?

cd ../

docker build -t $2 .

