#!/usr/bin/bash

URL="https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz"
FILENAME="openjdk-15.tar.gz"
OUTPUT_FOLDER="downloads"
OUTPUT_FILE="${OUTPUT_FOLDER}/${FILENAME}"
ARCHIVE_FOLDER="${OUTPUT_FOLDER}/openjdk"

./base-process.sh ${URL} ${FILENAME} ${OUTPUT_FOLDER} ${OUTPUT_FILE} ${ARCHIVE_FOLDER}
