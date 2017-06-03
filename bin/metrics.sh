#!/bin/bash
privateIp=$(ip addr show eth0 | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')
exec /usr/local/bin/elasticsearch_exporter -es.uri="http://${privateIp}:9200" -web.listen-address=":9090"
