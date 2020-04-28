#!/bin/bash

cargo build --release
cp target/release/hackers-the-spot-claim-story darwin
rm -rf target

docker build -t buildercontainer:debian -f docker/Dockerfile.debian .
docker create --name=buildercontainer-debian buildercontainer:debian
docker cp buildercontainer-debian:/opt/hackers-the-spot-claim-story/target/release/hackers-the-spot-claim-story debian
docker rm buildercontainer-debian
