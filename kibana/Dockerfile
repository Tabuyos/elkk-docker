FROM centos
MAINTAINER Tabuyos(Aaron Liew) <tabuyos@outlook.com>

WORKDIR /opt/elkk/kibana
COPY ./downloads/kibana .

WORKDIR /opt/elkk/openjdk
COPY ./downloads/openjdk .

WORKDIR /app
COPY ./kibana/config/start-kibana.sh .

RUN groupadd -r elkk \
	&& useradd -r -g elkk elkk \
	&& chmod +x ./start-kibana.sh \
	&& chown -R elkk:elkk /opt/elkk \
	&& chown elkk:elkk ./start-kibana.sh

ENV KIBANA_HOME=/opt/elkk/kibana PATH=$PATH:/opt/elkk/openjdk/bin
EXPOSE 5601
USER elkk
ENTRYPOINT ["sh", "-c", "./start-kibana.sh"]
