curl -X POST http://localhost:8083/connectors \
  -H "Content-Type: application/json" \
  -d '{
    "name": "postgres-connector",
    "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "database.hostname": "postgres",
      "database.port": "5432",
      "database.user": "debezium",
      "database.password": "dbpass",
      "database.dbname": "mydb",
      "database.server.name": "pgserver1",
      "table.include.list": "public.users",
      "plugin.name": "pgoutput",
      "slot.name": "debezium_slot",
      "topic.prefix": "pg1"
    }
  }'