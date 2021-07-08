#!/bin/sh
cat ./config/swagger-ui/prefixIndexForDocument.js ./config/swagger-ui/index.json > ./swagger-ui/dist/index.js

cp -p ./config/swagger-ui/custom_index.html ./swagger-ui/dist/document.html

echo "Generate Document. ./swagger-ui/dist/document.html!"


