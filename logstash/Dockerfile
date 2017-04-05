FROM docker.elastic.co/logstash/logstash:5.3.0

RUN rm -rf /usr/share/logstash/pipeline
RUN rm -rf /usr/share/logstash/config
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/