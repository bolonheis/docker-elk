#!/bin/bash

for i in {90..0}; do
    if curl http://elasticsearch:9200; then
        curl -XPUT -u "elastic:Senh4Segur4" http://elasticsearch:9200/infracoes -H "Content-Type: application/json" -d @/index_mapping.json
            break;
    fi
    sleep 2
done
