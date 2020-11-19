#!/usr/bin/bash
sysctl -w vm.max_map_count=262144
exec "$ELASTICSEARCH_HOME/bin/elasticsearch"
