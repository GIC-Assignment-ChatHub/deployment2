echo "--- Deploying namespace"
./namespace.sh

echo "--- Deploying ingress"
./ingress.sh

echo "--- Deploying Rsyslog"
./rsyslog.sh

echo "--- Deploying Fluentd"
./fluentd.sh

echo "--- Deploying Prometheus"
./prometheus.sh

echo "--- Deploying OpenTelemetry"
./otel.sh

echo "--- Deploying Grafana"
./grafana.sh

echo "--- Deploying website"
./website.sh

echo "--- Deploying Minio"
./minio.sh

echo "--- Deploying Mongo"
./mongo.sh

echo "--- Deploying Redis"
./redis.sh

echo "--- Deploying Tailchat"
./tailchat.sh