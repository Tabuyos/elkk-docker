#!/usr/bin/bash

ZK_VERSION=$1

URL="https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-${ZK_VERSION}/apache-zookeeper-${ZK_VERSION}-bin.tar.gz"
FILENAME="zookeeper-${ZK_VERSION}.tgz"
OUTPUT_FOLDER="downloads"
OUTPUT_FILE="${OUTPUT_FOLDER}/${FILENAME}"
ARCHIVE_FOLDER="${OUTPUT_FOLDER}/zookeeper"

./base-process.sh ${URL} ${FILENAME} ${OUTPUT_FOLDER} ${OUTPUT_FILE} ${ARCHIVE_FOLDER}
