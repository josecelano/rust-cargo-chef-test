#!/bin/bash

UID=${UID:-1000}

echo "Building docker image ..."
echo "UID: $UID"

docker build \
    --build-arg UID="$UID" \
    -t rust-cargo-chef-test .
