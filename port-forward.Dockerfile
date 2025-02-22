FROM alpine:3.18

RUN apk add --no-cache curl bash && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

COPY ./scripts/port-forward.sh /usr/local/bin/restart-port-forward.sh
RUN chmod +x /usr/local/bin/restart-port-forward.sh

ENTRYPOINT ["/usr/local/bin/restart-port-forward.sh"]
