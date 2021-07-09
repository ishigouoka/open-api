#!/bin/sh

cd `dirname $0`

API_SPEC_PATH="./api-spec"
WORK_DIR=$API_SPEC_PATH"/work"

rm -rf $WORK_DIR
mkdir -p $WORK_DIR

node $API_SPEC_PATH"/merge_spec.js" $API_SPEC_PATH"/index.base.yaml" ./api-spec/spec/reference/*.yaml ./api-spec/spec/model/*.yaml > $WORK_DIR"/merged.yaml"
npx swagger-merger -i api-spec/work/merged.yaml -o api-spec/work/index.yaml
echo "check open-api/work/index.yaml!"

./node_modules/@apidevtools/swagger-cli/bin/swagger-cli.js bundle -o ./config/swagger-ui/index.json ./api-spec/work/index.yaml
echo "convert index.yaml to index.json"

sh ./generate-html-document.sh
