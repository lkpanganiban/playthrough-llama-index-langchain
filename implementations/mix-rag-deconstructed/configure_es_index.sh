#!/bin/bash
# start opensearch
# docker run -p 9200:9200 -p 9600:9600 -e "bootstrap.memory_lock=true" -e "DISABLE_SECURITY_PLUGIN=true" -e "OPENSEARCH_JAVA_OPTS=-Xms512m -Xmx512m" -e "discovery.type=single-node" --name opensearch-node-1 opensearchproject/opensearch:2.9.0

# load mapping
curl -H "Content-type: application/json" -X PUT http://localhost:9200/llama-mix-index -d '{
    "settings":{
        "number_of_shards": 1
    }, 
      "mappings":{ 
         "properties":{ 
            "asin":{ 
               "type":"keyword" 
            }, 
            "description_vector":{ 
               "type":"knn_vector", 
               "dimension":384 
            }, 
            "item_image":{ 
               "type":"keyword" 
            }, 
            "text_field":{ 
               "type":"text", 
               "fields":{ 
                  "keyword_field":{ 
                     "type":"keyword" 
                  } 
               }, 
               "analyzer":"standard" 
            } 
         } 
      } 
} 
'