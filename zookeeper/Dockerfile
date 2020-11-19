FROM centos
MAINTAINER Tabuyos(Aaron Liew) <tabuyos@outlook.com>

WORKDIR /opt/elkk/zookeeper
COPY ./downloads/zookeeper .

WORKDIR /opt/elkk/openjdk
COPY ./downloads/openjdk .

WORKDIR /app
COPY ./zookeeper/config/start-zookeeper.sh .

RUN groupadd -r elkk \
	&& useradd -r -g elkk elkk \
	&& chmod +x ./start-zookeeper.sh \
	&& chown -R elkk:elkk /opt/elkk \
	&& chown elkk:elkk ./start-zookeeper.sh

ENV ZK_HOME=/opt/elkk/zookeeper PATH=$PATH:/opt/elkk/openjdk/bin
EXPOSE 2181 2888 3888 8080
USER elkk
ENTRYPOINT ["sh", "-c", "./start-zookeeper.sh"]
