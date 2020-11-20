FROM centos
MAINTAINER Tabuyos(Aaron Liew) <tabuyos@outlook.com>
RUN cat /etc/sysctl.conf && ls -al /etc/sysctl.d
# WORKDIR /opt/elkk/elasticsearch
# COPY ./downloads/elasticsearch .

# WORKDIR /opt/elkk/openjdk
# COPY ./downloads/openjdk .

# WORKDIR /app
# COPY ./elasticsearch/config/start-elasticsearch.sh .

# RUN groupadd -r elkk \
# 	&& cat /etc/sysctl.conf \
# 	&& useradd -r -g elkk elkk \
# 	&& chmod +x ./start-elasticsearch.sh \
# 	&& chown -R elkk:elkk /opt/elkk \
# 	&& chown elkk:elkk ./start-elasticsearch.sh

# ENV ELASTICSEARCH_HOME=/opt/elkk/elasticsearch PATH=$PATH:/opt/elkk/openjdk/bin
# EXPOSE 9200 9300
# USER elkk
ENTRYPOINT ["sh", "-c", "./start-elasticsearch.sh"]
