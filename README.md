# 🚀 Real-Time Data Pipelines: Debezium + Kafka Connect + Elasticsearch

```
cd /opt

mkdir connect-plugins

cd /opt/connect-plugins

# Download plugins from "plugins" folder to under "/opt/connect-plugins" this path

docker-compose up -d

docker-compose ps 

./source-connector.sh

./sink-connector.sh
```

### Kafka Connect API's:
```
1. Show all connectors

curl http://localhost:8083/connectors

2. Show specifig connector status

curl http://localhost:8083/connectors/postgres-connector/status

3. Delete connector

curl -X DELETE http://localhost:8083/connectors/postgres-connector
```
