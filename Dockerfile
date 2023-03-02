FROM grafana/grafana:8.5.3

USER grafana

COPY ./docker-compose.yaml ./

COPY ./compose.env ./

COPY ./grafana_data /var/lib/grafana

COPY ./provisioning /etc/grafana/provisioning

COPY ./custom.ini /etc/grafana/grafana.ini
