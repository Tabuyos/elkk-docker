FROM centos
MAINTAINER Tabuyos(Aaron Liew) <tabuyos@outlook.com>

WORKDIR /opt/elkk/kafka
COPY ./downloads/kafka .

WORKDIR /opt/elkk/openjdk
COPY ./downloads/openjdk .

WORKDIR /app
COPY ./kafka/config/start-kafka.sh .

RUN groupadd -r elkk \
	&& useradd -r -g elkk elkk \
	&& chmod +x ./start-kafka.sh \
	&& chown -R elkk:elkk /opt/elkk \
	&& chown elkk:elkk ./start-kafka.sh

ENV KAFKA_HOME=/opt/elkk/kafka PATH=$PATH:/opt/elkk/openjdk/bin
EXPOSE 9092
USER elkk
ENTRYPOINT ["sh", "-c", "./start-kafka.sh"]
