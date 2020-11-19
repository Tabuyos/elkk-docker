#!/usr/bin/bash

ELK_VERSION=$1

URL="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ELK_VERSION}-linux-x86_64.tar.gz"
FILENAME="elasticsearch-${ELK_VERSION}.tgz"
OUTPUT_FOLDER="downloads"
OUTPUT_FILE="${OUTPUT_FOLDER}/${FILENAME}"
ARCHIVE_FOLDER="${OUTPUT_FOLDER}/elasticsearch"

./base-process.sh ${URL} ${FILENAME} ${OUTPUT_FOLDER} ${OUTPUT_FILE} ${ARCHIVE_FOLDER}
