#!/bin/bash

OUTPUT_DIR=./generated/proto-ts

mkdir -p $OUTPUT_DIR

protoc --plugin=node_modules/ts-proto/protoc-gen-ts_proto \
 --ts_proto_out=$OUTPUT_DIR \
 --ts_proto_opt=outputServices=grpc-js \
 --ts_proto_opt=esModuleInterop=true \
 -I=proto/ proto/*.proto proto/**/*.proto