#!/usr/bin/bash

URL=$1
FILENAME=$2
OUTPUT_FOLDER=$3
OUTPUT_FILE=$4
ARCHIVE_FOLDER=$5

if [ ! -d ${ARCHIVE_FOLDER} ]; then
    echo "create ${ARCHIVE_FOLDER}"
    mkdir -p ${ARCHIVE_FOLDER}
fi

if [ ! -f ${OUTPUT_FILE} ]; then
    curl ${URL} -o ${OUTPUT_FILE}
    tar zxf ${OUTPUT_FILE} -C ${ARCHIVE_FOLDER} --strip-components=1
fi
