#!/bin/sh

rm -rf ./generated-client/**
cd ./generated-client

# 利用可能な言語は以下コマンドで確認
# ./node_modules/@openapitools/openapi-generator-cli/bin/openapi-generator list

../node_modules/@openapitools/openapi-generator-cli/bin/openapi-generator generate -i ../api-spec/work/index.yaml -g csharp -c ../api-spec/config_client.yaml

echo "finish... Generated Client."
