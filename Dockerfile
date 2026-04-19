FROM eclipse-temurin:25-jre-noble

LABEL maintainer="kryptonhydrit <kryptonhydrit@kryptonhydrit.de>"

ARG DEBIAN_FRONTEND=noninteractive

ENV MANAGE_SERVER_PROPERTIES=true

RUN apt-get update -y && \
    apt-get install libarchive-tools \
        curl -y

COPY --chmod=755 servermanager.sh /servermanager.sh
COPY --chmod=755 includes/ /includes

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/bash", "servermanager.sh" ]