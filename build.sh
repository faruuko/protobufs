# Script top create folder

OUT_DIR=./auto-generated/proto-output

mkdir -p $OUT_DIR

#!/bin/bash
protoc --plugin=node_modules/ts-proto/protoc-gen-ts_proto \
 --ts_proto_out=$OUT_DIR \
 --ts_proto_opt=outputServices=grpc-js \
 --ts_proto_opt=esModuleInterop=true \
 -I=proto/ proto/*.proto proto/**/*.proto