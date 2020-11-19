#!/usr/bin/bash

SCALA_VERSION=$1
KAFKA_VERSION=$2

URL="https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz"
FILENAME="kafka_${KAFKA_VERSION}-${KAFKA_VERSION}.tgz"
OUTPUT_FOLDER="downloads"
OUTPUT_FILE="${OUTPUT_FOLDER}/${FILENAME}"
ARCHIVE_FOLDER="${OUTPUT_FOLDER}/kafka"

./base-process.sh ${URL} ${FILENAME} ${OUTPUT_FOLDER} ${OUTPUT_FILE} ${ARCHIVE_FOLDER}
