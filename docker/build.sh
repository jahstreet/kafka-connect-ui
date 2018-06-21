#!/bin/bash


tag={1:-"aksregistryprod.azurecr.io/kafka-connect-ui:0.9.5"}
no_cache="$2"

docker build . $no_cache -t $tag && \
docker push $tag && \
echo "Done! Enjoy..." || echo "ERROR! Check logs..."
