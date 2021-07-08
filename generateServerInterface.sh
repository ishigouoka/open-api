#!/bin/sh

rm -rf ./generated-server/**
cd ./generated-server

# 利用可能な言語は以下コマンドで確認
# ./node_modules/@openapitools/openapi-generator-cli/bin/openapi-generator list

../node_modules/@openapitools/openapi-generator-cli/bin/openapi-generator generate -i ../api-spec/work/index.yaml -g kotlin-spring -c ../api-spec/config_server.yaml

echo "finish... Generated Server Interface."
