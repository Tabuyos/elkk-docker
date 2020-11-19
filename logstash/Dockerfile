FROM centos
MAINTAINER Tabuyos(Aaron Liew) <tabuyos@outlook.com>

WORKDIR /opt/elkk/logstash
COPY ./downloads/logstash .

WORKDIR /opt/elkk/openjdk
COPY ./downloads/openjdk .

WORKDIR /app
COPY ./logstash/config/start-logstash.sh .

RUN groupadd -r elkk \
	&& useradd -r -g elkk elkk \
	&& chmod +x ./start-logstash.sh \
	&& chown -R elkk:elkk /opt/elkk \
	&& chown elkk:elkk ./start-logstash.sh

ENV LOGSTASH_HOME=/opt/elkk/logstash PATH=$PATH:/opt/elkk/openjdk/bin
EXPOSE 9600 5044
USER elkk
ENTRYPOINT ["sh", "-c", "./start-logstash.sh"]
