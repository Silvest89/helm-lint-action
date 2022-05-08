FROM harbor.silvenia.eu/dockerhub/alpine/helm:3.8.2
RUN apk add bash
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]