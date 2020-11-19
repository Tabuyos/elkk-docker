#!/usr/bin/bash

exec "$LOGSTASH_HOME/bin/logstash" "-f" "$LOGSTASH_HOME/pipeline/logstash.conf"
