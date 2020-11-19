#!/usr/bin/bash

SCALA_VERSION=2.13
KAFKA_VERSION=2.6.0
ZK_VERSION=3.6.2
ELK_VERSION=7.10.0

echo "starting download openjdk"
./openjdk-download.sh

echo "starting download kafka"
./kafka-download.sh ${SCALA_VERSION} ${KAFKA_VERSION}

echo "starting download zookeeper"
./zookeeper-download.sh ${ZK_VERSION}

echo "starting download elasticsearch"
./elasticsearch-download.sh ${ELK_VERSION}

echo "starting download logstash"
./logstash-download.sh ${ELK_VERSION}

echo "starting download kibana"
./kibana-download.sh ${ELK_VERSION}

echo "copy file"
mkdir -p ./downloads/logstash/pipeline
mkdir -p ./downloads/elasticsearch/data
cp ./logstash/pipeline/logstash.conf ./downloads/logstash/pipeline/

echo "over!"
