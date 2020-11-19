#!/usr/bin/bash

ELK_VERSION=$1

URL="https://artifacts.elastic.co/downloads/logstash/logstash-${ELK_VERSION}-linux-x86_64.tar.gz"
FILENAME="logstash-${ELK_VERSION}.tgz"
OUTPUT_FOLDER="downloads"
OUTPUT_FILE="${OUTPUT_FOLDER}/${FILENAME}"
ARCHIVE_FOLDER="${OUTPUT_FOLDER}/logstash"

./base-process.sh ${URL} ${FILENAME} ${OUTPUT_FOLDER} ${OUTPUT_FILE} ${ARCHIVE_FOLDER}
