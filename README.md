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