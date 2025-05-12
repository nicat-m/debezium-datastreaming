curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "elastic-sink",
   "config": {
     "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
     "tasks.max": "1",
     "topics": "pg1.public.users",
     "schema.ignore": "true",
     "key.ignore": "false",
     "connection.url": "http://elasticsearch:9200",
     "type.name": "_doc",
     "value.converter.schemas.enable": "false",
     "key.converter.schemas.enable": "true",
     "name": "elastic-sink",
     "key.converter": "org.apache.kafka.connect.storage.StringConverter",
     "value.converter": "org.apache.kafka.connect.json.JsonConverter",
     "behavior.on.null.values": "delete",
     "errors.tolerance": "all",
     "errors.log.enable": true,
     "errors.log.include.messages": true,
     "errors.deadletterqueue.topic.name": "dlq-topic",
     "errors.deadletterqueue.context.headers.enable": true,
     "errors.deadletterqueue.topic.replication.factor": 1
   }
 }'